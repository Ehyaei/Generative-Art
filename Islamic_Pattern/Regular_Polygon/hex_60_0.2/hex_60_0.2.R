library(Kaashi)
library(ggplot2)

copy_path <- "../../Blog/content/gallery/2021-11-22-islamic-patterns-regular-tiling/images/"
folder_path <-  "Islamic_Pattern/Regular_Polygon/hex_60_0.2/"
pettern_name <- "hex_60_0.2"
save_name = paste0(folder_path,pettern_name)

png_path = paste0(save_name,".png")

hexagonal = regularPolygon(6) 
tile <- motif(theta = 60, n = 6, delta = 0.2, 
              box = hexagonal, dist = 0.05, polyLine = F)
tiles <- tiling(tile, n = 2, type = "hexagonal", box = hexagonal)

p <- tilePlotter(tiles, tileColor = c("#FFAD00","#FFAD00","#007EA1","#002D7B"),
            borderSize = 0.1)

ggsave(png_path, plot = p, dpi = 200, device = "png")
knitr::plot_crop(png_path)
file.copy(png_path, copy_path)

ggsave(paste0(save_name,".eps"), plot = p, device = "eps")
ggsave(paste0(save_name,".svg"), plot = p, device = "svg")

your_string <- paste0("![](",pettern_name,".svg",")")
file.create(paste0(folder_path,"/README.md"))
writeLines(your_string, paste0(folder_path,"/README.md"))
