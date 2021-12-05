source("manuscript/utils.R")

square <- regularPolygon(4)
tile <- motif(square, n = 9, theta = 40, delta = 0.5, polyLine = F, dist = 0.07,midpoint = c(1,-1))
daily_submit(tiles, "9")

