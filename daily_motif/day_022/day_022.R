source("manuscript/utils.R")

n = 6
polygon = regularPolygon(n)
center = st_centroid(regularPolygon(n,sf = T)) %>% .$geometry %>% unlist()
tile <- motif(box = polygon, n = n, theta = 30, delta = 0,circle = T, dist =  0.2, radius = 0.5) %>% 
  filter(area >= max(area))
tiles = tiling(tile, box = polygon, n = 2, type = "hexagonal") %>% 
  motif_rotation(180)
daily_submit(tiles, "22")
