# Circlize library demo
# Source: https://jokergoo.github.io/circlize_book/book/the-chorddiagram-function.html

# Load the circlize library
library(circlize)
setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/Day01/scripts/Circlize")

# Generate a random matrix of transitions
set.seed(999)
mat = matrix(sample(25, 18), 3, 6)
rownames(mat) = paste0("S", 1:3)
colnames(mat) = paste0("E", 1:6)

# Display the matrix
chordDiagram(mat)

# Improve the style
grid.col = c(
  S1 = "red", S2 = "green", S3 = "blue",
  E1 = "grey", E2 = "grey", E3 = "grey", E4 = "grey", E5 = "grey", E6 = "grey"
)
chordDiagram(mat, grid.col=grid.col)
chordDiagram(mat, grid.col=grid.col, transparency=0.8, link.border="black")
chordDiagram(mat, grid.col=grid.col, transparency=0.5, link.border = "black", link.lwd=2)


pdf("Plot3.pdf", width = 4, height = 4)
chordDiagram(mat, grid.col=grid.col, transparency=0.5, link.border = "black", link.lwd=2)
dev.off()
