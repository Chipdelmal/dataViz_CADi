# Source: http://www.htmlwidgets.org/showcase_networkD3.html
library(networkD3)
setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/Day01/scripts/Networks")
data(MisLinks, MisNodes)
fn=forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.75)
htmlwidgets::saveWidget(as_widget(fn), "forceNetwork.html")