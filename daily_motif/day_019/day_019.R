source("manuscript/utils.R")
n = 6
polygon = regularPolygon(n)
center = st_centroid(regularPolygon(n,sf = T)) %>% .$geometry %>% unlist()
tile <- motif(box = polygon, n = 2*n, theta = c(30, 60), delta = 0.5, dist =  0.00000001)
tile <- tile %>% filter(area < 0.07)
daily_submit(tiles, "19")