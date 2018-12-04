##############################################################################
# Box-Whisker Chart
# ---------------------------------------------------------------------------
# Sources:
#   http://www.sthda.com/english/wiki/ggplot2-box-plot-quick-start-guide-r-software-and-data-visualization
#   https://ggplot2.tidyverse.org/reference/diamonds.html
#   https://ggplot2.tidyverse.org/reference/mpg.html
##############################################################################

install.packages("ggplot2")
library(ggplot2)
options(repr.plot.width=4, repr.plot.height=3)

#############################################################################
# Diamonds Initial draft
head(diamonds)
diamonds
p = ggplot(diamonds, aes(carat, price))
p = p + geom_boxplot(aes(group = cut_width(carat, 1)),notchwidth = 0.5)
p

# Flipping axes
p = p + coord_flip()

# Adjust the transparency of outliers using outlier.alpha, and add style
width=.75
p = ggplot(diamonds, aes(carat, price)) + scale_fill_brewer(palette="Pastel1") +
  geom_boxplot(aes(group = cut_width(carat, width), 
                   fill=cut_width(carat, width)), 
               outlier.alpha = .1) +
  coord_flip() + theme() + labs(fill = "Carats")
p
ggsave(file="/Users/sanchez.hmsc/Desktop/diamonds.svg", width=10, height=4, dpi=200)

#############################################################################
# Cars Initial draft
head(mpg)
mpg[100,]
p = ggplot(mpg, aes(class, hwy), outlier.alpha = 0.1)
p = p + geom_boxplot()
p

# Flip axes
p = p + coord_flip()
p


