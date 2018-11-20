library(dygraphs)
setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/Day01/scripts/TimeSeries")
readData=read.csv2("deterministicData.csv",sep=",",header=FALSE,dec=".")


tsDataA=ts(readData$V1, frequency = 4, start = c(1959, 2))
tsDataB=ts(readData$V2, frequency = 4, start = c(1959, 2))
tsDataC=ts(readData$V3, frequency = 4, start = c(1959, 2))
tsData=cbind(tsDataA,tsDataB,tsDataC)
dygraph(tsData, main = "New Haven Temperatures") %>% dyRangeSelector()

