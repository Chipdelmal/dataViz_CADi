#install.packages("treemap")

library(treemap)

setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/scripts/TreeMap")
letter.frequency <- function(filename)
{
  file <- paste(tolower(readLines(filename)), collapse = '')
  chars <- strsplit(file, NULL)[[1]]
  summary(factor(chars))
}

data=data.frame(letter.frequency("./1984.txt"))
characters=rownames(data)
dat=data.frame(characters=rownames(data),frequency=data[,1],color=runif(length(characters))*16-4)
treemap(dat, index="characters", vSize="frequency", vColor="color", type="value", palette="RdYlBu")


pdf("treeMap.pdf", width = 4, height = 4)
treemap(dat, index="characters", vSize="frequency", vColor="color", type="value", palette="RdYlBu")
dev.off()
