##############################################################################
# Violin Plots
# ----------------------------------------------------------------------------
# Source:
#   http://www.sthda.com/english/wiki/ggplot2-violin-plot-quick-start-guide-r-software-and-data-visualization
#   https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/ToothGrowth.html
#   https://ggplot2.tidyverse.org/reference/diamonds.html
##############################################################################

#
setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/scripts/ViolinPlots/")

#install.packages("ggplot2")
library(ggplot2)
options(repr.plot.width=4, repr.plot.height=3)

# Loading and perparing the dataset
ToothGrowth
ToothGrowth$dose = as.factor(ToothGrowth$dose)
ToothGrowth

# Creating the first approach to the visualization
p = ggplot(ToothGrowth, aes(x=dose, y=len)) +
  geom_violin(trim=FALSE)
p + geom_boxplot(width=0.05)

# Adding the dotplot
p = ggplot(ToothGrowth, aes(x=dose, y=len)) +
  geom_violin(trim=FALSE)
p + geom_dotplot(binaxis='y', stackdir='center', dotsize=1)

# Changing the color
p = ggplot(ToothGrowth, aes(x=dose, y=len, color=dose)) +
  geom_violin(trim=FALSE)
p=p + geom_dotplot(binaxis='y', stackdir='center', dotsize=1)
p
pdf("violinChart.pdf", width = 4, height = 4)
p
dev.off()

# Testing adding fill color
p = ggplot(ToothGrowth, aes(x=dose, y=len, fill=dose)) +
  geom_violin(trim=FALSE)
p + geom_dotplot(binaxis='y', stackdir='center', dotsize=.5)

# Improving the style
p = ggplot(ToothGrowth, aes(x=dose, y=len, color=dose)) +
  geom_violin(trim=FALSE)
data_summary <- function(x) {
   m <- mean(x)
   ymin <- m-sd(x)
   ymax <- m+sd(x)
   return(c(y=m,ymin=ymin,ymax=ymax))
}
p + stat_summary(fun.data=data_summary)
p
pdf("violinChart.pdf", width = 4, height = 4)
p
dev.off()

dp <- ggplot(ToothGrowth, aes(x=dose, y=len, fill=dose)) +
  geom_violin(trim=FALSE)+
  geom_boxplot(width=0.1, fill="white")+
  labs(title="Plot of length  by dose",x="Dose (mg)", y = "Length")
dp = dp + scale_fill_brewer(palette="Blues") + theme_minimal()
dp

pdf("violinChart.pdf", width = 4, height = 4)
dp
dev.off()


###############################################################################
# Violin Chart from box-whisker example
###############################################################################

width=.25
dp=ggplot(diamonds, aes(carat, price)) +
  geom_violin(aes(group = cut_width(carat, width), fill=cut_width(carat, width)))
dp + theme(legend.position='none')
dp