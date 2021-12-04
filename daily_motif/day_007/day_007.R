source("manuscript/utils.R")

square <- regularPolygon(4)
tile <- motif(square, n = 4, theta = 45, delta = 0, polyLine = F,dist = 0.2)

tiles = tile
for(i in 1:3){
  tile %>% 
    motif_rotation(i*60,center = c(0,1)) %>% 
    motif_union(tiles) -> tiles
}

daily_submit(tiles, "7")

