source("manuscript/utils.R")

d = 0.3
n = 4
polygon = regularPolygon(n)
center = st_centroid(regularPolygon(n,sf = T)) %>% .$geometry %>% unlist()
tile1 <- motif(box = polygon, n = n, theta = 45, delta = 0, dist =  d) %>% 
  filter(area<max(area)) %>% 
  motif_transfer(-center)
tile <- tile1

for(i in 1:5){
  .tile = tile1 %>% motif_rotation(i*(30)) %>% motif_scale((0.8)^i)
  tile = tile %>% motif_union(.tile)
}
tile = tile %>% motif_rotation(45)

daily_submit(tile, "20")
