source("manuscript/utils.R")

center <- regularPolygon(3,sf = T) %>% st_centroid() %>% .$geometry %>% unlist()
triangle <- regularPolygon(3)
tile1 <- motif(box = triangle, theta = 30, delta = 0.5, n = 6, dist = 0.005, midpoint = center)
tile2 <- motif_rotation(tile1,theta = 180) %>% motif_transfer(c(0,0.01))
tile <- motif_union(tile1, tile2) %>% motif_rotation(90)
tile %>% filter(area.1 < max(tile$area.1)) -> tile
tilePlotter(tile)

  


# tilePlotter(tiles)
# daily_submit(tile, "9")

