##############################################################################
# Folium Example
# ---------------------------------------------------------------------------
# Sources:
# https://github.com/python-visualization/folium
##############################################################################

import folium
import numpy as np
from folium.plugins import MarkerCluster

DIR = "/Users/sanchez.hmsc/Documents/GitHub/dataViz_CADi/scripts/Map/"

##############################################################################
# Basic globe with rastered map
##############################################################################
# Make an empty map
m = folium.Map(location=[20, 0], zoom_start=3.5)
m.save(DIR + 'map2.html')


m = folium.Map(location=[44, -73], zoom_start=5)
marker_cluster = MarkerCluster().add_to(m)

folium.Marker(
    location=[40.67, -73.94],
    popup='Add popup text here.',
    icon=folium.Icon(color='green', icon='ok-sign'),
).add_to(marker_cluster)

folium.Marker(
    location=[44.67, -73.94],
    popup='Add popup text here.',
    icon=folium.Icon(color='red', icon='remove-sign'),
).add_to(marker_cluster)

folium.Marker(
    location=[44.67, -71.94],
    popup='Add popup text here.',
    icon=None,
).add_to(marker_cluster)

m.save(DIR + 'manualClusteredMarkers.html')

##############################################################################
# Basic globe with rastered map
##############################################################################
size = 100
delta = .01
lats = np.random.uniform(37.773972-delta, 37.773972+delta, size=size)
lons = np.random.uniform(-122.43129-delta, -122.43129+delta, size=size)

locations = list(zip(lats, lons))
popups = ['lon:{}<br>lat:{}'.format(lon, lat) for (lat, lon) in locations]

m = folium.Map(
    location=[np.mean(lats), np.mean(lons)],
    tiles='Cartodb Positron',
    zoom_start=12
)

marker_cluster = MarkerCluster(
    locations=locations, popups=popups,
    name='1000 clustered icons',
    overlay=True,
    control=True
)

marker_cluster.add_to(m)
folium.LayerControl().add_to(m)

m.save(DIR + 'randomClusteredMarkers.html')
