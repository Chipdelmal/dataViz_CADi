
PATH = "/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/Day01/scripts/TimeSeries"


ggplot(test_data, aes(date)) + 
  geom_line(aes(y = var0, colour = "var0")) + 
  geom_line(aes(y = var1, colour = "var1"))
