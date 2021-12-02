library(ggplot2)
library(Kaashi)
square = regularPolygon(3)
tile <- motif(square,n = 3,  delta = 0.5, polyLine = F,midpoint = c(1,1), dist = 0.05,circle = T,radius = 1.2)
st
daily_minimal_plot(tile,"daily_motif/day_005/day_005.png",type = "png",caption = "Daily Motif\n\nNO. 5")
daily_minimal_plot(tile,"daily_motif/day_005/day_005.svg",type = "svg",caption = "Daily Motif\n\nNO. 5")

copy_path <- "../../Blog/content/gallery/2021-11-30-daily-motif/images/"
folder_path <-  "daily_motif/day_005/"
pettern_name <- "day_005"
plot_transfer(folder_path, pettern_name, copy_path)
