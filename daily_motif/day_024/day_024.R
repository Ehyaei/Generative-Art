source("manuscript/utils.R")
n = 8
theta = 60
circle <- st_buffer(st_point(c(0,0)),dist = 2) 
box = circle %>% st_cast("POLYGON") %>% unclass() %>% .[[1]]
tile <- motif(box = box, n = n, theta = c(theta,30), delta = 0.8, dist =  0.00000001, midpoint = c(-0.5,0)) %>% 
  filter(area<max(area)) 
border = tile %>% filter(area == max(area)) %>% motif_rotation(theta/2)
daily_submit(tile, "24")
