source("manuscript/utils.R")

triangle = regularPolygon(3)
tile <- motif(box = triangle, n = 3, theta = 45, delta = 0.5, dist = 0.02)
tile = tile %>% filter(area>median(area))

tiles = tiling(tile,box = triangle, n = 1,type = "triangle")
tiles = motif_rotation(tiles,theta = 180)

daily_submit(tiles, "14")

