library(Kaashi)
library(ggplot2)
source("manuscript/utils.R")


triangale = regularPolygon(3) 
tile <- motif(box = triangale, theta = 25,delta = 0.5,n = 3, polyLine = F,dist = 0.01)
tiles <- tiling(tile, n = 2, box = triangale,type = "triangle")
p <- tilePlotter(tiles, tileColor = c("#FFAD00","#FFAD00","#FFAD00","#007EA1","#002D7B"),
            borderSize = 0.001)

copy_path <- "../../Blog/content/gallery/2021-11-22-islamic-patterns-regular-tiling/images/"
folder_path <-  "Islamic_Pattern/Regular_Polygon/triangle_25_0.5"
pettern_name <- "triangle_25_0.5"
saveTile(plot = p, path = folder_path, name = pettern_name, type = c("png","eps","svg"), dpi = 200)

plot_transfer(folder_path, pettern_name, copy_path)
