source("manuscript/utils.R")

circle <- st_buffer(st_point(c(0,0)),1) %>% unclass() %>% .[[1]]
tile <- motif(box = circle, theta = 30, delta = 0, n = 11, dist = 0.03, midpoint = c(0.5, 0.5))
tilePlotter(tile)
daily_submit(tile, "10")

