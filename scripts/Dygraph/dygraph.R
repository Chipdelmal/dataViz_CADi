##############################################################################
# Dygraph
# ---------------------------------------------------------------------------
# Source:
#   https://rstudio.github.io/dygraphs/
#   https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/UKLungDeaths.html
##############################################################################

install.packages("dygraphs")
install.packages("plotly")
install.packages("htmlwidgets")

##############################################################################
# Mosquito example

# Loading libraries and dataset
library(dygraphs)
library(plotly)
library(htmlwidgets)
#setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/scripts/Dygraph")
readData=read.csv2("deterministicData.csv",sep=",",header=FALSE,dec=".")
head(readData)

tsDataA=ts(readData$V1, frequency = 4, start = c(1959, 1))
tsDataB=ts(readData$V2, frequency = 4, start = c(1959, 1))
tsDataC=ts(readData$V3, frequency = 4, start = c(1959, 1))
tsData=cbind(tsDataA,tsDataB,tsDataC)
dygraph(tsData, main = "Genotypes Breakdowns") %>%
  dyRangeSelector()

dygraph(tsData, main = "Genotypes Breakdowns") %>%
  dySeries("tsDataA", label = "W") %>%
  dySeries("tsDataB", label = "H") %>%
  dySeries("tsDataC", label = "R") %>%
  dyOptions(stackedGraph = TRUE, colors = RColorBrewer::brewer.pal(3, "Set1")) %>%
  dyRangeSelector()

dygraph(tsData, main = "Genotypes Breakdowns") %>%
  dySeries("tsDataA", label = "W") %>%
  dySeries("tsDataB", label = "H") %>%
  dySeries("tsDataC", label = "R") %>%
  dyOptions(stackedGraph = TRUE, colors = RColorBrewer::brewer.pal(3, "Set2")) %>%
  dyRangeSelector()  %>%
  dyHighlight(highlightCircleSize = 5,
              highlightSeriesBackgroundAlpha = 0.75,
              hideOnMouseOut = FALSE)

dyGraph=dygraph(tsData, main = "Genotypes Breakdowns") %>%
  dySeries("tsDataA", label = "W") %>%
  dySeries("tsDataB", label = "H") %>%
  dySeries("tsDataC", label = "R") %>%
  dyOptions(stackedGraph = TRUE, colors = RColorBrewer::brewer.pal(3, "Set1")) %>%
  dyRangeSelector()
dyGraph
htmlwidgets::saveWidget(as_widget(dyGraph), "dygraph.html")


##############################################################################
# Lungs example
mdeaths
fdeaths
lungDeaths <- cbind(mdeaths, fdeaths)
dygraph(lungDeaths)
dygraph(lungDeaths) %>% dyRangeSelector()

# Bad plotting example
require(stats)
require(graphics)
plot(ldeaths)
plot(mdeaths, fdeaths)
yr <- floor(tt <- time(mdeaths))
plot(mdeaths, fdeaths,
     xy.labels = paste(month.abb[12*(tt - yr)], yr-1900, sep = "'"))
