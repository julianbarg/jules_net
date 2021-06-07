library (ggmap)
library(rgdal)
library(tidyverse)

shapefile <- rgdal::readOGR("~/Downloads/NaturalGas_InterIntrastate_Pipelines_US_EIA/shapefile.shp")

levels(shapefile@data$Operator)

df <- fortify(shapefile)

map <- ggplot() +
  geom_path(data = df,
            aes(x = long, y = lat))

print(map)
