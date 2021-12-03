source("manuscript/utils.R")

square = regularPolygon(3)
tile <- motif(square,n = 3,  delta = 0.5, polyLine = F,midpoint = c(0,1), dist = 0.05,circle = T,radius = 0.75)
daily_minimal_plot(tile,savePath = "daily_motif/day_006/day_006.svg")

daily_submit(tile, "6")
