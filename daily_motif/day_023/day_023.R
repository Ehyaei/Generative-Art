source("manuscript/utils.R")

delta = 0.6
tile1 <- motif(box = regularPolygon(3), n = 3, theta = 60, delta = delta, dist =  0.05) %>% 
  filter(area>=max(area))
tilePlotter(tile1)
tile2 <- motif(box = regularPolygon(4), n = 4, theta = 60, delta = delta, dist =  0.0000000001) %>% 
  filter(area>=max(area))
tilePlotter(tile2)
tile = tile2 %>% 
  motif_union(motif_transfer(tile1,c(0,2))) %>% 
  motif_union(motif_rotation(tile1,180)) %>% 
  motif_union(motif_rotation(tile1,270) %>% motif_transfer(c(-1,1))) %>% 
  motif_union(motif_rotation(tile1,90) %>% motif_transfer(c(1,1))) %>% 
  motif_rotation(45)
tilePlotter(tile)
daily_submit(tile, "23")
