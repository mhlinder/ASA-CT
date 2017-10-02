
library(rgdal)
library(magrittr)

state <- readOGR(dsn = file.path("data",
                                 "statect_37800_0000_1990_s100_CENSUS_1_shp",
                                 "wgs84"),
                 layer = "statect_37800_0000_1990_s100_CENSUS_1_shp_wgs84")
town <- readOGR(dsn = file.path("data",
                                 "townct_37800_0000_1990_s100_CENSUS_1_shp",
                                 "wgs84"),
                 layer = "townct_37800_0000_1990_s100_CENSUS_1_shp_wgs84")

## png("newengland.png", width = 600, height = 600)
## par(mar = rep(.1, 4))
## plot(shape, lwd = 10)
## dev.off()

