source("manuscript/utils.R")
square = regularPolygon(4)
tile <- motif(box = square, theta = 70, delta = 0, n = 4, dist = 0.0000001)
tiles = tiling(tile, n = 2)
tiles = tiles %>% filter(area<=median(area)) 
tilePlotter(tiles)
daily_submit(tiles, "11")

