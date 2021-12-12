source("manuscript/utils.R")

polygon = regularPolygon(4)
tile <- motif(box = polygon, n = 4, theta = 60, delta = 0, dist = 0.04,midpoint = c(0,0))
tile = tile %>% filter(area>median(area))

tiles = tiling(tile,box = triangle, n = 2,type = "square")
tiles = motif_rotation(tiles,theta = 180)
daily_submit(tiles, "15")

