source("manuscript/utils.R")
circle <- st_buffer(st_point(c(0,1)),.6)
square = regularPolygon(4)
tile <- motif(box = square, theta = 60, delta = 0, n = 4, dist = 0.03,circle = T,radius = 1)
tile = st_difference(tile,circle)
tiles = tiling(tile, n = 2)
tilePlotter(tiles)
daily_submit(tile, "11")

