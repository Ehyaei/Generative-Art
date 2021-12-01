library(ggplot2)
library(Kaashi)
square = regularPolygon(12)
tile <- motif(square,n = 12, theta = 30, delta = 0, polyLine = F, dist = 0.1,midpoint = c(1,1))
daily_minimal_plot(tile,"daily_motif/day_002/day_002.png",type = "png",caption = "Daily Motif\n\nNO. 2")
daily_minimal_plot(tile,"daily_motif/day_002/day_002.svg",type = "svg",caption = "Daily Motif\n\nNO. 2")

copy_path <- "../../Blog/content/gallery/2021-11-30-daily-motif/images/"
folder_path <-  "daily_motif/day_002/"
pettern_name <- "day_002"
plot_transfer(folder_path, pettern_name, copy_path)
