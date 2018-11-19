library(spocc)
library(raster)
ulmus <- occ(query='Anas platyrhynchos', from='gbif', limit=2500)
df = as.data.frame(ulmus$gbif$data$Anas_platyrhynchos)
library(mapr)
map_leaflet(df[,c('name', 'longitude', 'latitude', 'stateProvince', 'country', 'year', 'occurrenceID')])



