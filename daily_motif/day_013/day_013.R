source("manuscript/utils.R")
square = regularPolygon(6)
tile <- motif(box = square, theta = 30, delta = 0.4, n = 12, dist = 0.04, circle = T,radius = 0.8, midpoint = c(0.8,0.8))
tiles = tiling(tile, n = 1)
tiles = tiles %>% filter(area>=median(area))
tiles = tiles %>% filter(area>=median(area))
tilePlotter(tiles)
daily_submit(tiles, "13")

