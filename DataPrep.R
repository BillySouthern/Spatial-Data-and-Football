#11/21/23, initiated by BS
#Goal: To visualize fitness/football data
#Scripts purpose is to plot/map the point and line data
# First tidying, then plotting

#Libraries
library(tidyverse)
library(sf)
library(ggsoccer)

#Load in shapefiles

#Session 1
Line1 <- read_sf('~/Documents/GitHub/Spatial-Data-and-Football/Outdoor Routes/Line/Line1.shp') 

Point1 <- read_sf('~/Documents/GitHub/Spatial-Data-and-Football/Outdoor Routes/Point/Point1.shp') 


pitch_custom <- list(
  length = 150,
  width = 100,
  penalty_box_length = 25,
  penalty_box_width = 60,
  six_yard_box_length = 8,
  six_yard_box_width = 26,
  penalty_spot_distance = 16,
  goal_width = 12,
  origin_x = -78.5054,
  origin_y = -78.5050
)

ggplot() + 
  geom_sf(data = Line1, fill = NA, color = "blue") + 
  geom_sf(data = Point1, fill = NA, color = "darkred") +
  #annotate_pitch(dimensions = pitch_custom) +
  theme_pitch()
  
