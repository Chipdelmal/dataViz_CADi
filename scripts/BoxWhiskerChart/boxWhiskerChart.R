##############################################################################
# Box-Whisker Chart
# ---------------------------------------------------------------------------
# Source: http://www.sthda.com/english/wiki/ggplot2-box-plot-quick-start-guide-r-software-and-data-visualization
##############################################################################

# install.packages("ggplot2")
library(ggplot2)
options(repr.plot.width=4, repr.plot.height=3)

#############################################################################
# Diamonds Initial draft
head(diamonds)
p = ggplot(diamonds, aes(carat, price))
p = p + geom_boxplot(aes(group = cut_width(carat, 0.25)))
p

# Flipping axes
p = p + coord_flip()
p

#############################################################################
# Cars Initial draft
head(mpg)
p = ggplot(mpg, aes(class, hwy), outlier.alpha = 0.1)
p = p + geom_boxplot()
p

# Flip axes
p = p + coord_flip()
p


# Adjust the transparency of outliers using outlier.alpha, and add style
width=.75
p = ggplot(diamonds, aes(carat, price)) + scale_fill_brewer(palette="Pastel1") +
  geom_boxplot(aes(group = cut_width(carat, width), fill=cut_width(carat, width)), outlier.alpha = 0.025) +
  coord_flip() + theme() + labs(fill = "Carats")
p
ggsave(file="bench_query_sort.pdf", width=10, height=4, dpi=300)
