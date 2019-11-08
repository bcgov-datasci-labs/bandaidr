band_label <- function(x){
  
  num_layers <- raster::nlayers(x)
  
  ## bom satellite
  if (num_layers == 2) {
    names(x) <- c("band1", "band2") ## temporary; this would come 
  }
  
  return(x)
  
}




