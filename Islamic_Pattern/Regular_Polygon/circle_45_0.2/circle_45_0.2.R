library(Kaashi)
library(ggplot2)
source("manuscript/utils.R")


tile <- motif(theta = 45, delta = 0.2, n = 4, polyLine = F, 
              dist = 0.0001,circle = T,radius = 1)
tiles <- tiling(tile, n = 4,overlap = T)
p <- tilePlotter(tiles,c("#FFAD00","#FFAD00","#FFAD00","#FFAD00","#FFAD00","#007EA1","#002D7B"),
                 borderSize = 0.1,lineColor = "transparent")
copy_path <- "../../Blog/content/gallery/2021-11-22-islamic-patterns-regular-tiling/images/"
folder_path <-  "Islamic_Pattern/Regular_Polygon/circle_45_0.2"
pettern_name <- "circle_45_0.2"
saveTile(plot = p, path = folder_path, name = pettern_name, type = c("png","eps","svg"), dpi = 200)

plot_transfer(folder_path, pettern_name, copy_path)
