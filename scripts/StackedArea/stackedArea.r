library(plotly)
# Read Data
setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/Day01/scripts/StackedArea")
readData=read.csv2("deterministicData.csv",sep=",",header=FALSE,dec=".")
range=seq(0,length(readData$V1)-1)
readData$V4=range
# Set colors and labels
colors=c("rgb(25,128,255)","rgb(255,25,128)","rgb(128,0,255)","rgb(255,0,255)")
labels=c("W","H","R","B")
# Plot
p = plot_ly(readData, x = ~V4, y = ~V1, name = 'W', type = 'scatter', mode = 'none', stackgroup = 'one', fillcolor = colors[1]) %>%
      add_trace(y = ~V2, name = 'H', fillcolor = colors[2]) %>%
      add_trace(y = ~V3, name = 'R', fillcolor = colors[3]) %>%
      layout(
        xaxis = list(title = 'Time', titlefont=list(size = 25)),
        yaxis = list(title = 'Allele Frequency', titlefont=list(size = 25))
    )
p
# Export HTML
htmlwidgets::saveWidget(as_widget(p), "alleleFrequencyR.html")
