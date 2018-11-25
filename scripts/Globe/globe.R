# Source: https://www.displayr.com/interactive-globe-r/
# Source: https://bwlewis.github.io/rthreejs/globejs.html

# install.packages(c("threejs"))
# require(devtools)
# install_github("Displayr/flipChartBasics")
# install_github("Displayr/flipAPI")
devtools::install_github("bwlewis/rthreejs")

library(threejs)
library(flipChartBasics)
library(flipAPI)



earth <- "http://eoimages.gsfc.nasa.gov/images/imagerecords/73000/73909/world.topo.bathy.200412.3x5400x2700.jpg"
globejs(img=earth, bg="white")

# Read the data and calculate age in years
x = read.csv("https://data.nasa.gov/api/views/gh4g-9sfh/rows.csv")
current = as.numeric(format(Sys.Date(), "%Y"))
x$age = current - as.numeric(substr(x$year, 7, 10))

# Filter the required information
x = x[ , c("reclong", "reclat", "mass..g.", "age")]
colnames(x) = c("long","lat","value", "age")

# Set colors on a scale of 1 to 10 by percentile
colors = as.numeric(cut(x$age,
breaks = quantile(x$age, probs = seq(0, 1, 0.1),
                  include.lowest = TRUE, na.rm = TRUE)))
palette = ChartColors(10, "Reds", reverse = TRUE)
colors = palette[colors]

# Plot the data on the globe
globejs(lat = x$lat,
        long = x$long,
        val = 2 * log(x$value),
        color = colors,
        pointsize = 0.5,
        atmosphere = TRUE)




# Make a data.frame of the required information
url <- "https://esa.un.org/unpd/wup/cd-rom/WUP2014_XLS_CD_FILES/WUP2014-F13-Capital_Cities.xls"
x = DownloadXLSX(url, skip = 15)
x = x[, c("Longitude", "Latitude", "Population (thousands)", "Capital City")]
names(x) = c("long","lat", "population", "city")

# Convert population to numeric
x$population = as.character(x$population)
x$population[x$population == "\u2026"] = 0 # remove ellipsis
x$population = as.numeric(x$population)

# Set colors according to first letter of the city name
first.letters = sapply(substring(x$city, 1, 1),
                       utf8ToInt) - utf8ToInt("A") + 1
palette = ChartColors(26, "Blues")
colors = palette[first.letters]

# Plot the data on the globe
earth = "http://eoimages.gsfc.nasa.gov/images/imagerecords/73000/73909/world.topo.bathy.200412.3x5400x2700.jpg"
globejs(img = earth,
        lat = x$lat,
        long = x$long,
        val = 10 * log(x$population),
        color = colors,
        pointsize = 5,
        atmosphere = FALSE,
        bg = "white")
