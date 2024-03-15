install.packages("tmap", repos = c("https://r-tmap.r-universe.dev", "https://cloud.r-project.org"))
library(tmap)

map_improved <- tm_shape(tracts17) +
  tm_polygons(fill = "TotalPop", style = "quantile", border.col = NA, n=6,title = "Population", palette = "YlGnBu" )+
  tm_layout(frame = FALSE,legend.frame = FALSE)+
  tm_title("Population of Census Tracts in Lancaster County")


#Now let's add the growth boundary
map_improved <- map_improved + tm_shape(uga)+
  tm_borders(col = "red", lwd = 1.5)

# Add the UGA layer to the legend manually
map_improved <- map_improved + 
  tm_add_legend(type = "lines", col = "red", lwd = 1.5, labels = "Urban Growth Area")


map_improved


## Yayy wow I love this new look aha I am going to now map pop dens

map_dens <- tm_shape(tracts17) +
  tm_polygons(fill = "popdens", style = "quantile", border.col = NA, n=6,title = "Population Density", palette = "YlGnBu" )+
  tm_layout(frame = FALSE,legend.frame = FALSE)+
  tm_title("Population Density of Census Tracts in Lancaster County",
           title.)


#Now let's add the growth boundary
map_dens <- map_dens + tm_shape(uga)+
  tm_borders(col = "red", lwd = 0.5)

# Add the UGA layer to the legend manually
map_dens <- map_dens + 
  tm_add_legend(type = "lines", col = "red", lwd = 1.5, labels = "Urban Growth Area")


map_dens