source("manuscript/utils.R")

square = regularPolygon(4)
tile = motif(square,theta = 45, delta = 0.5,midpoint = c(1,1),dist = 0.25)
tiling(tile,n = 2)-> tiles
daily_submit(tiles, "6")
