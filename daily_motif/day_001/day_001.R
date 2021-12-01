library(ggplot2)
library(Kaashi)
square = regularPolygon(8)
tile <- motif(square,n = 8, theta = 45, delta = 0.5, polyLine = F, dist = 0.04)
daily_minimal_plot(tile,"daily_motif/day_001/day_001.png",type = "png",caption = "Daily Motif\n\nNO. 1")
daily_minimal_plot(tile,"daily_motif/day_001/day_001.svg",type = "svg",caption = "Daily Motif\n\nNO. 1")

copy_path <- "../../Blog/content/gallery/2021-11-30-daily-motif/images/"
folder_path <-  "daily_motif/day_001/"
pettern_name <- "day_001"
plot_transfer(folder_path, pettern_name, copy_path)
