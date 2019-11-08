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
  
  
  Landsat7 <- structure(list(Name = structure(c(2L, 3L, 4L, 5L, 6L, 7L, 8L, 
                                                9L, 10L, 1L, 1L, 1L), .Label = c("", "B1", "B2", "B3", "B4", 
                                                                                 "B5", "B6_VCID_1", "B6_VCID_2", "B7", "B8"), class = "factor"), 
                             Resolution = structure(c(3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 
                                                      2L, 1L, 1L, 1L), .Label = c("", "15 meters", "30 meters"), class = "factor"), 
                             Wavelength = structure(c(2L, 3L, 5L, 6L, 7L, 8L, 8L, 9L, 
                                                      4L, 1L, 1L, 1L), .Label = c("", "0.45 - 0.52 Âµm", "0.52 - 0.60 Âµm", 
                                                                                  "0.52 - 0.90 Âµm", "0.63 - 0.69 Âµm", "0.77 - 0.90 Âµm", 
                                                                                  "1.55 - 1.75 Âµm", "10.40 - 12.50 Âµm", "2.08 - 2.35 Âµm"
                                                      ), class = "factor"), Description = structure(c(2L, 3L, 8L, 
                                                                                                      6L, 9L, 5L, 4L, 10L, 7L, 1L, 1L, 1L), .Label = c("", "Blue", 
                                                                                                                                                       "Green", "High-gain Thermal Infrared 1. This band has higher radiometric resolution (sensitivity), although it has a more restricted dynamic range. Resampled from 60m to 30m.", 
                                                                                                                                                       "Low-gain Thermal Infrared 1. This band has expanded dynamic range and lower radiometric resolution (sensitivity), with less saturation at high Digital Number (DN) values. Resampled from 60m to 30m.", 
                                                                                                                                                       "Near infrared", "Panchromatic", "Red", "Shortwave infrared 1", 
                                                                                                                                                       "Shortwave infrared 2"), class = "factor"), Code = structure(c(2L, 
                                                                                                                                                                                                                      3L, 6L, 4L, 7L, 9L, 10L, 8L, 5L, 1L, 1L, 1L), .Label = c("", 
                                                                                                                                                                                                                                                                               "B", "G", "NIR", "PAN", "R", "SWIR1", "SWIR2", "TH1", "TH1A"
                                                                                                                                                                                                                      ), class = "factor")), class = "data.frame", row.names = c(NA, 
                                                                                                                                                                                                                                                                                 -12L))
  
  landsat_tibble <- dplyr::left_join(landsat_tibble, Landsat7, by = c("band_short" = "Name"))
  
  dplyr::mutate(landsat_tibble, rasters = purrr::map(landsat, raster::raster)) 
  
  
}




