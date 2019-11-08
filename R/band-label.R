#' @title Add a label
#' @param x a raster
#' 
#' @export 


band_label <- function(x){
  
  num_layers <- raster::nlayers(x)
  
  ## bom satellite
  if (num_layers == 2) {
    names(x) <- c("band1", "band2") ## temporary; this would come 
  }
  
  return(x)
  
}

#' @title Turn a imagery into a rectagular file
#' @param path to directory
#' @param ext extension to select on
#' 
#' @export 

summarize_imagery <- function(path = "data", ext = ".TIF"){
  
  landsat <- list.files(path = path, pattern = ext, full.names = TRUE)
  
  landsat_tibble <- tibble::as_tibble(landsat)
  landsat_tibble$band_short <- substr(basename(landsat), 42, 43)
  
  dplyr::mutate(landsat_tibble, rasters = purrr::map(landsat, raster::raster)) 
  
  
}




