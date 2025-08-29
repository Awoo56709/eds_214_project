#Creating an initilization environment

#Adding a vector of packages needed for analysis
package_list <- c("lubridate","here","janitor","lubridate")

for (package in package_list) {
  if (!requireNamespace(package, quietly = TRUE)) {
    install.packages(package)
  }
}