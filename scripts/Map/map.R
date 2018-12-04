##############################################################################
# Leaflet Example
# ---------------------------------------------------------------------------
# Sources:
# https://rstudio.github.io/leaflet/
# https://jakevdp.github.io/PythonDataScienceHandbook/04.13-geographic-data-with-basemap.html
##############################################################################

install.packages("rjson")
install.packages("dplyr")
#install.packages("ggplot2")
install.packages("rjson")
install.packages("RCurl")
install.packages("leaflet")

library(leaflet)
library(dplyr)
library(ggplot2)
library(rjson)
library(plotly)
library(jsonlite)
library(leaflet)
library(RCurl)

setwd("/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/scripts/Map")

##############################################################################
# Basic globe with rastered map
##############################################################################
m = leaflet() %>% # Add default OpenStreetMap map tiles
  addTiles() %>% 
  addMarkers(lng=-99.226977, lat=19.595734, popup="New Zealand")
m
htmlwidgets::saveWidget(as_widget(m), "leafletMexico02.html")

##############################################################################

base_url = "http://data.colorado.gov/resource/j5pc-4t32.json?"
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
                   lat = ~location.latitude,
                   popup= "popup",
                   opacity = 0.75,
                   color = "#E83F6F",
                   stroke = FALSE,
                   radius=10
                   )
water_locations_map
htmlwidgets::saveWidget(as_widget(water_locations_map), "leafletColorado.html")
