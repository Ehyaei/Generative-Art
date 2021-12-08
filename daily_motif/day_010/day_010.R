source("manuscript/utils.R")

circle <- st_buffer(st_point(c(0,0)),1) %>% unclass() %>% .[[1]]
tile1 <- motif(box = circle, theta = 45, delta = 0.5, n = 6, dist = 0.01)
tilePlotter(tile)
daily_submit(tile, "10")

