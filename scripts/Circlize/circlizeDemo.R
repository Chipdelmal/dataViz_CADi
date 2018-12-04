##############################################################################
# Circlize
# ---------------------------------------------------------------------------
# Source:
#   https://jokergoo.github.io/circlize_book/book/the-chorddiagram-function.html
##############################################################################

install.packages("circlize")

# Load the circlize library
library(circlize)
#setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/scripts/Circlize")

# Generate a random matrix of transitions
set.seed(999)
mat = matrix(sample(50, 18), 3, 6)
rownames(mat) = paste0("S", 1:3)
colnames(mat) = paste0("E", 1:6)
mat

# Display the matrix
chordDiagram(mat)

# Improve the style
# https://coolors.co/
grid.col = c(
  S1 = "#f58f29", S2 = "#C20114", S3 = "blue",
  E1 = "red", E2 = "blue", E3 = "grey", E4 = "grey", E5 = "grey", E6 = "grey"
)
chordDiagram(mat, grid.col=grid.col, directional = TRUE)
#----------------------------

chordDiagram(mat, grid.col=grid.col, transparency=0.8, link.border="black")
chordDiagram(mat, grid.col=grid.col, transparency=0.5, link.border = "black", link.lwd=2)

# Export PDF to drive
pdf("Plot3.pdf", width = 4, height = 4)
chordDiagram(mat, grid.col=grid.col, transparency=0.5, link.border = "black", link.lwd=2)
dev.off()
