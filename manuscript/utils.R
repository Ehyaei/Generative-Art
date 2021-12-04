############################################################
#                                                          #
#                      Load Libraries                      #
#                                                          #
############################################################

library(ggplot2)
library(Kaashi)
library(dplyr)
library(sf)
############################################################
#                                                          #
#               Put Plot in Project and Blog               #
#                                                          #
############################################################

plot_transfer <- function(folder_path, pettern_name, copy_path){
  file.copy(paste0(folder_path,"/",pettern_name,".png"), copy_path)
  md_string <- paste0("![](",pettern_name,".svg",")")
  file.create(paste0(folder_path,"/README.md"))
  writeLines(md_string, paste0(folder_path,"/README.md"))
}

daily_submit <- function(tile, day,
                         copy_path = "../../Blog/content/gallery/2021-11-30-daily-motif/images/"
                         ){
  dp = stringr::str_pad(day,3,"left","0")
  caption  = paste0("Daily Motif\n\nNO. ",day)
  folder_path = sprintf("daily_motif/day_%s", dp)
  fileTemp = sprintf("daily_motif/day_%s/day_%s", dp, dp)
  
  # Save Plots
  daily_minimal_plot(tile, paste0(fileTemp,".png"), type = "png",caption = caption)
  daily_minimal_plot(tile, paste0(fileTemp,".svg"),type = "svg",caption = caption)
  daily_minimal_plot(tile, paste0(fileTemp,".eps"),type = "eps",caption = caption)
  
  # Create Readme
  md_string <- paste0("![](day_",dp,".svg",")")
  file.create(paste0(folder_path,"/README.md"))
  writeLines(md_string, paste0(folder_path,"/README.md"))
  
  
  # Copy to Blog
  file.copy(paste0(fileTemp,".png"), copy_path)
  
  # Commit and push Generative Art
  system("git add *")
  system(sprintf("git commit -a -m \" design day %s\"",dp))
  system("git push")
  
  
}
