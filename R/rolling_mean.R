#Creating Rolling Average Function

#' 9 Week Rolling Mean Function
#'
#' @param focal_date 
#' @param dates 
#' @param values 
#' @param window_weeks 
#'
#' @returns
#' @export
#'
#' @examples
# moving_average <- function(focal_date, Sample_Date, conc, wind_size_weeks) {
#   #Which dates are in the window
#   is_in_window <- (Sample_Date > focal_date - (wind_size_weeks / 2) * 7) &
#     (Sample_Date < focal_date + (wind_size_weeks / 2) * 7)
#   #find the associated concentrations
#   window_conc <- conc[is_in_window]
#   #calculate the mean
#   result <- mean(window_conc, na.rm = TRUE)
#   is_in_window <- (dates > focal_date - (wind_size_weeks / 2) * 7) &
#     (dates < focal_date + (wind_size_weeks / 2) * 7)
#   #find the associated concentrations
#   window_conc <- conc[is_in_window]
#   #calculate the mean
#   result <- mean(window_conc)
#   
#   return(result)
# }


#Defined the function similar to previous version but instead of explicitly calculating the lower and higher with mathimatics we take the lower and higher values and get means


# Define rolling average function with focal date, dates, concentration and window weeks 
moving_average <- function(focal_date, dates, values, window_weeks = 9) {
  #define window days below so we dont have to calculate both lower and higher
  window_days <- (window_weeks / 2) * 7
  #in window will be the taking on the lower and the higher end of our limit
  in_window <- dates >= (focal_date - window_days) & dates <= (focal_date + window_days)
  #getting the result for values within the window at a specific date
  mean(values[in_window], na.rm = TRUE)
}

#adding code to create rolling average for CA
#nutrients$sample_date <- as.Date(nutrients$sample_date)

#ca_ma_once <- moving_average(focal_date = as.Date("1986-05-20"),
 #                            dates = nutrients$sample_date,
  #                           conc = nutrients$ca,
   #                          wind_size_weeks = 9)


#nutrients$calc_rolling <- sapply(
 # nutrients$sample_date,
  #moving_average,
  #Sample_Date = nutrients$sample_date,
  #conc = nutrients$ca,
  #wind_size_weeks = 9
#)
