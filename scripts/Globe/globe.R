##############################################################################
# Globe Examples
# ---------------------------------------------------------------------------
# Sources:
#   https://www.displayr.com/interactive-globe-r/
#   https://bwlewis.github.io/rthreejs/globejs.html
#   https://www.rdocumentation.org/packages/threejs/versions/0.3.1/topics/globejs
#   https://www.rdocumentation.org/packages/maps/versions/3.3.0/topics/world.cities
#   https://data.nasa.gov/api/views/gh4g-9sfh/
##############################################################################

# Installing the required libraries
# install.packages("devtools")
# install.packages(c("threejs"))
# devtools::install_github("Displayr/flipChartBasics")
# devtools::install_github("Displayr/flipAPI")
# devtools::install_github("bwlewis/rthreejs")
# install.packages("maptools")
# install.packages("maps")
# install.packages("htmlwidgets")

# Loading the libraries
library(threejs)
library(flipChartBasics)
library(flipAPI)
library(maps)
library(maptools)
setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/scripts/Globe")

##############################################################################
# Basic globe with rastered map
##############################################################################
earth = "http://eoimages.gsfc.nasa.gov/images/imagerecords/73000/73909/world.topo.bathy.200412.3x5400x2700.jpg"
globejs(img=earth, bg="black")

#############################################################################
# Rendering a globe with 2000 most populated cities
#############################################################################
data(world.cities, package="maps")
cities = world.cities[order(world.cities$pop,decreasing=TRUE)[1:2000],]
value  = 100 * cities$pop / max(cities$pop)

head(cities)

globejs(bg="black", lat=cities$lat, long=cities$long, value=value, rotationlat=0.34, rotationlong=0, fov=30)
??globejs
globeCities=globejs(img=earth,bg="black", lat=cities$lat, long=cities$long, value=value, rotationlat=0.34, rotationlong=0, fov=30)
globeCities
htmlwidgets::saveWidget(globeCities, "globeCities.html")

##############################################################################
# Meteorite impacts
##############################################################################
# Read the data and calculate age in years
x = read.csv("https://data.nasa.gov/api/views/gh4g-9sfh/rows.csv")
current = as.numeric(format(Sys.Date(), "%Y"))
x$age = current - as.numeric(substr(x$year, 7, 10))

# Filter the required information
x = x[ , c("reclong", "reclat", "mass..g.", "age")]
colnames(x) = c("long","lat","value", "age")

# Set colors on a scale of 1 to 10 by percentile
colors = as.numeric(cut(x$age,
breaks = quantile(x$age, probs = seq(0, 1, 0.1),
                  include.lowest = TRUE, na.rm = TRUE)))
palette = ChartColors(10, reverse = TRUE)
colors = palette[colors]

# Plot the data on the globe
globeMeteors=globejs(img=earth,
        lat = x$lat,
        long = x$long,
        val = 2 * log(x$value),
        color = colors,
        pointsize = 0.5,
        atmosphere = TRUE)
globeMeteors
htmlwidgets::saveWidget(globeMeteors, "globeMeteors.html")

##############################################################################
# Flights
##############################################################################
data(flights)
head(flights)
# Approximate locations as factors
dest = factor(sprintf("%.2f:%.2f",flights[,3], flights[,4]))
# A table of destination frequencies
freq = sort(table(dest), decreasing=TRUE)
# The most frequent destinations in these data, possibly hub airports?
frequent_destinations = names(freq)[1:10]
# Subset the flight data by destination frequency
idx = dest %in% frequent_destinations
frequent_flights = flights[idx, ]
# Lat/long and counts of frequent flights
ll = unique(frequent_flights[,3:4])
# Plot frequent destinations as bars, and the flights to and from
# them as arcs. Adjust arc width and color by frequency.
globeFlights=globejs(img=earth,lat=ll[,1], long=ll[,2], arcs=frequent_flights, bodycolor="#aaaaff",
        arcsHeight=0.3, arcsLwd=2, arcsColor="#ffff00", arcsOpacity=0.15,
        atmosphere=TRUE, color="#00aaff", pointsize=0.5, bg="black")
globeFlights
htmlwidgets::saveWidget(globeFlights, "globeFlights.html")
