##############################################################################
# Treemap
##############################################################################

install.packages("treemap")

library(treemap)

#setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/scripts/TreeMap")
letter.frequency <- function(filename)
{
  file <- paste(tolower(readLines(filename)), collapse = '')
  chars <- strsplit(file, " ")[[1]]
  print(chars)
  summary(factor(chars), maxsum = 100)
}

data=data.frame(letter.frequency("./1984.txt"))
characters=rownames(data)
dat=data.frame(
  characters=rownames(data),
  frequency=data[,1],
  color=data[,1]
)
newdata <- subset(dat, frequency > 50 & frequency < 40000)
treemap(newdata, index="characters", vSize="frequency", vColor="color", type="value", palette="Spectral")


pdf("treeMap.pdf", width = 12.5, height = 8)
treemap(newdata, index="characters", vSize="frequency", vColor="color", type="value", palette="RdYlBu")
dev.off()




