##############################################################################
# Leaflet Example
# ---------------------------------------------------------------------------
# Sources:
# https://rstudio.github.io/leaflet/
# https://jakevdp.github.io/PythonDataScienceHandbook/04.13-geographic-data-with-basemap.html
##############################################################################

#install.packages("rjson")
#install.packages("dplyr")
#install.packages("ggplot2")
#install.packages("rjson")
#install.packages("RCurl")
#install.packages("leaflet")

library(leaflet)
library(dplyr)
library(ggplot2)
library(rjson)
library(jsonlite)
library(leaflet)
library(RCurl)

setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/scripts/Map")

##############################################################################
# Basic globe with rastered map
##############################################################################
m = leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m

base_url = "https://data.colorado.gov/resource/j5pc-4t32.json?"
full_url = paste0(base_url, "station_status=Active", "&county=BOULDER")
water_data = getURL(URLencode(full_url))

# you can then pipe this
water_data_df = fromJSON(water_data) %>%
  flatten(recursive = TRUE) # remove the nested data frame

# turn columns to numeric and remove NA values
water_data_df = water_data_df %>%
  mutate_at(vars(amount, location.latitude, location.longitude), funs(as.numeric)) %>%
  filter(!is.na(location.latitude))
# create leaflet map
water_locations_map = leaflet(water_data_df) %>%
  addTiles() %>%
  addCircleMarkers(lng = ~location.longitude,
                   lat = ~location.latitude)
water_locations_map
