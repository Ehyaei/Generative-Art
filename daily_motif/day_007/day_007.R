source("manuscript/utils.R")

square = regularPolygon(4, sf = T)
sf::st_centroid(square) %>% st_ca
tile = square

for(i in 1:16){
  square %>% 
    motif_scale(1) %>% 
    motif_rotation(i*45) %>% 
    motif_transfer(c(-1+0.25*i,1+0.25*i)) %>% 
    motif_union(tile) -> tile
}
tilePlotter(tile)

daily_submit(tiles, "7")
