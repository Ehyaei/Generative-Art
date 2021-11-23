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
