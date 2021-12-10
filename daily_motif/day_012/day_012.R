source("manuscript/utils.R")
square = regularPolygon(5)
tile <- motif(box = square, theta = 60, delta = 0.5, n = 5, dist = 0.02)
tiles = tiling(tile, n = 1)
tiles = tiles %>% filter(area<=median(area)) 
tilePlotter(tiles)
daily_submit(tiles, "12")

