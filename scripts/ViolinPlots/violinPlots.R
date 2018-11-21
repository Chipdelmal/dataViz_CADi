# Source: http://www.sthda.com/english/wiki/ggplot2-violin-plot-quick-start-guide-r-software-and-data-visualization

#install.packages("ggplot2")
library(ggplot2)

# Loading and perparing the dataset
ToothGrowth$dose <- as.factor(ToothGrowth$dose)
ToothGrowth

# Creating the first approach to the visualization
p = ggplot(ToothGrowth, aes(x=dose, y=len)) +
  geom_violin(trim=FALSE)
p + geom_boxplot(width=0.1)

# Adding the dotplot
p = ggplot(ToothGrowth, aes(x=dose, y=len)) +
  geom_violin(trim=FALSE)
p + geom_dotplot(binaxis='y', stackdir='center', dotsize=1)

# Changing the color
p = ggplot(ToothGrowth, aes(x=dose, y=len, color=dose)) +
  geom_violin(trim=FALSE)
p + geom_dotplot(binaxis='y', stackdir='center', dotsize=1)

# Testing adding fill color
p = ggplot(ToothGrowth, aes(x=dose, y=len, fill=dose)) +
  geom_violin(trim=FALSE)
p + geom_dotplot(binaxis='y', stackdir='center', dotsize=1)

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
pdf("violinChart.pdf", width = 4, height = 4)
p
dev.off()


dp <- ggplot(ToothGrowth, aes(x=dose, y=len, fill=dose)) +
  geom_violin(trim=FALSE)+
  geom_boxplot(width=0.1, fill="white")+
  labs(title="Plot of length  by dose",x="Dose (mg)", y = "Length")
dp = dp + scale_fill_brewer(palette="Blues") + theme_classic()

pdf("violinChart.pdf", width = 4, height = 4)
dp
dev.off()
