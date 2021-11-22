library(Kaashi)
library(ggplot2)

copy_path <- "../../Blog/content/gallery/2021-11-22-islamic-patterns-regular-tiling/images/"
folder_path <-  "Islamic_Pattern/Regular_Polygon/square_30_0.5/"
pettern_name <- "square_30_0.5"
save_name = paste0(folder_path,pettern_name)

png_path = paste0(save_name,".png")

tile <- motif(theta = 30, delta = 0.5, polyLine = F)
vector = rbind(
  c(2,0),
  c(0,2))
tiles <- tiling(tile,n = 7, type = "periodic",vector = vector) 

p <- tilePlotter(tiles, tileColor = c("#FFAD00","#FFAD00","#BF5700","#002D7B","#007EA1"),
            borderSize = 0.1)

ggsave(png_path, plot = p, dpi = 200, device = "png")
knitr::plot_crop(png_path)
file.copy(png_path, copy_path)

ggsave(paste0(save_name,".eps"), plot = p, device = "eps")
ggsave(paste0(save_name,".svg"), plot = p, device = "svg")

your_string <- paste0("![](",pettern_name,".svg",")")
file.create(paste0(folder_path,"/README.md"))
writeLines(your_string, paste0(folder_path,"/README.md"))
