library(ggplot2)
library(Kaashi)
square = regularPolygon(7)
tile <- motif(square,n = 7, theta = 30, delta = 1, polyLine = F, dist = 0.05,circle = T,radius = 2)

daily_minimal_plot(tile,"daily_motif/day_004/day_004.png",type = "png",caption = "Daily Motif\n\nNO. 3")
daily_minimal_plot(tile,"daily_motif/day_004/day_004.svg",type = "svg",caption = "Daily Motif\n\nNO. 3")

copy_path <- "../../Blog/content/gallery/2021-11-30-daily-motif/images/"
folder_path <-  "daily_motif/day_004/"
pettern_name <- "day_004"
plot_transfer(folder_path, pettern_name, copy_path)
