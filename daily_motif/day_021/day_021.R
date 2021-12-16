source("manuscript/utils.R")

d = 0.0001
n = 6
polygon = regularPolygon(n)
center = st_centroid(regularPolygon(n,sf = T)) %>% .$geometry %>% unlist()
tile <- motif(box = polygon, n = 6, theta = c(30,60), delta = 0,circle = T, dist =  d,radius = 2.2) %>% 
  filter(area>min(area)) %>%
  filter(area>min(area)) %>%
  filter(area>min(area))
tiles = tiling(tile, box = polygon, n = 2, type = "hexagonal")
daily_submit(tiles, "21")
