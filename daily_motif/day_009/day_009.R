source("manuscript/utils.R")

center <- regularPolygon(3,sf = T) %>% st_centroid() %>% .$geometry %>% unlist()
triangle <- regularPolygon(3)
tile1 <- motif(box = triangle, theta = 45, delta = 0.5, n = 6, dist = 0.03, midpoint = center)
tile2 <- motif_rotation(tile1,theta = 180) %>% motif_transfer(c(0,0.00))
tile <- rbind(tile1, tile2) %>% motif_rotation(90)
tile %>% filter(area < max(tile1$area)) -> tile
tilePlotter(tile)

daily_submit(tile, "9")

