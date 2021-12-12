source("manuscript/utils.R")

polygon = regularPolygon(6)
tile <- motif(box = polygon, n = 6, theta = 75, delta = 0.7, dist = 0.08, midpoint = c(0,0))
tile = tile %>% filter(area>median(area))
tiles = tiling(tile,box = polygon, n = 2,type = "hexagonal")
tiles = motif_rotation(tiles,theta = 180)
daily_submit(tiles, "16")

