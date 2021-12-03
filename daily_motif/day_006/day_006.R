source("manuscript/utils.R")

triangle = regularPolygon(4,sf = T)
shape = triangle
for(i in 1:12){
  .shape = triangle %>% motif_rotation(runif(1,0,360)) %>% motif_transfer(c(rnorm(1,2),rnorm(1,2)))
  shape = st_union(shape,.shape)
}

plot(st_intersects(shape$geometry, 0.1 * shape$geometry))
shape$geometry %>% plot

tile1 <- motif(traingle, n = 3,  delta = 0.5, polyLine = F,dist = 0.05)
plot(tile1)
square = regularPolygon(4)
tile2 <- motif(square, n = 4,theta = 90,  delta = 0, polyLine = F,dist = 0.05)

plot(st_sym_difference(tile1,tile2))

daily_minimal_plot(tile,savePath = "daily_motif/day_006/day_006.svg")

daily_submit(tile, "6")
