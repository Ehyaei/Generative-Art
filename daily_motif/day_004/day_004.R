library(ggplot2)
library(Kaashi)
square = regularPolygon(5)
tile <- motif(square,n = 4,  delta = 0.5, polyLine = F,midpoint = c(1,1), dist = 0.05,circle = T,radius = 1.2)

daily_minimal_plot(tile,"daily_motif/day_004/day_004.png",type = "png",caption = "Daily Motif\n\nNO. 4")
daily_minimal_plot(tile,"daily_motif/day_004/day_004.svg",type = "svg",caption = "Daily Motif\n\nNO. 4")

copy_path <- "../../Blog/content/gallery/2021-11-30-daily-motif/images/"
folder_path <-  "daily_motif/day_004/"
pettern_name <- "day_004"
plot_transfer(folder_path, pettern_name, copy_path)
