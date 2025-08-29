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
#' 


#Defined the function similar to previous version but instead of explicitly calculating the lower and higher with mathematics we take the lower and higher values and get means


# Define rolling average function with focal date, dates, concentration and window weeks 
moving_average <- function(focal_date, dates, values, window_weeks = 9) {
  #define window days below so we dont have to calculate both lower and higher
  window_days <- (window_weeks / 2) * 7
  #in window will be the taking on the lower and the higher end of our limit
  in_window <- dates >= (focal_date - window_days) & dates <= (focal_date + window_days)
  #getting the result for values within the window at a specific date
  mean(values[in_window], na.rm = TRUE)
}
