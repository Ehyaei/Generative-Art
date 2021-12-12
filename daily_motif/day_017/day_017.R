source("manuscript/utils.R")

polygon = regularPolygon(3)
tile <- motif(box = polygon, n = 12, theta = 22.5, delta = 0.4, dist =  0.00000001, midpoint = c(0,0))
tile = tile %>%
  filter(area > median(area)) %>%
  filter(area > median(area)) 
tiles = tiling(tile,box = polygon, n = 1,type = "triangle")
tiles = motif_rotation(tiles,theta = 180)
daily_submit(tiles, "17")

