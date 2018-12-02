##############################################################################
# Networks
# ---------------------------------------------------------------------------
# Source:
#   http://www.htmlwidgets.org/showcase_networkD3.html
#   https://cran.r-project.org/web/packages/networkD3/README.html
#   https://www.rdocumentation.org/packages/networkD3/versions/0.4/topics/forceNetwork
##############################################################################

#install.packages("networkD3")
#install.packages("igraph")
#install.packages("plotly")

library(igraph)
library(plotly)
library(networkD3)
setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/Day01/scripts/Networks")

##############################################################################
# Mis Data

# Template data
data(MisLinks, MisNodes)
fn=forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.75)
htmlwidgets::saveWidget(as_widget(fn), "forceNetwork.html")


##############################################################################
# Zachary's Karate Club with Clustering

# Use igraph to make the graph and find membership
karate <- make_graph("Zachary")
wc <- cluster_walktrap(karate)
members <- membership(wc)

# Convert to object suitable for networkD3
karate_d3 <- igraph_to_networkD3(karate, group = members)
fn=forceNetwork(Links = karate_d3$links, Nodes = karate_d3$nodes,
             Source = 'source', Target = 'target', NodeID = 'name',
             Group = 'group')
htmlwidgets::saveWidget(as_widget(fn), "karateNetwork.html")
