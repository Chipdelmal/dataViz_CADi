##############################################################################
# Leaflet Example
# ---------------------------------------------------------------------------
# Sources:
#   https://rdrr.io/github/hrbrmstr/streamgraph/man/streamgraph.html
#   https://www.r-graph-gallery.com/159-save-interactive-streamgraph-to-static-image-png/
##############################################################################

install.packages("plotly")
install.packages("devtools")
devtools::install_github("hrbrmstr/streamgraph")
install.packages("ggplot2movies")
install.packages("dplyr")

# Library
library(streamgraph)
library(ggplot2movies)
library(dplyr)

setwd("/Users/sanchez.hmsc/Desktop/")

# Create data:
year=rep(seq(1990,2016) , each=10)
name=rep(letters[1:10] , 27)
value=sample(seq(0,1,0.0001) , length(year))
data=data.frame(year, name, value)

# Basic stream graph
streamgraph(data, key="name", value="value", date="year")

dataMovies=ggplot2movies::movies
dat = ggplot2movies::movies %>%
  select(year, Action, Animation, Comedy, Drama, Documentary, Romance, Short) %>%
  tidyr::gather(genre, value, -year) %>%
  group_by(year, genre) %>%
  tally(wt=value) %>%
  ungroup %>%
  mutate(year=as.Date(sprintf("%d-01-01", year)))

head(dat)

streamgraph(dat, "genre", "n", "year")

streamgraph(dat, "genre", "n", "year", interpolate="step") 

stream=streamgraph(dat, "genre", "n", "year", interpolate="step", 
                   scale="date", width=1000, offset="silhouette")  
  %>% sg_fill_brewer("Blues") %>% sg_axis_x(20, "year", "%Y") %>% sg_axis_y(0)
stream
htmlwidgets::saveWidget(stream, "stream.html")
