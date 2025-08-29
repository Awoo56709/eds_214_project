#Importing Libraries/Data
library(tidyverse)
library(lubridate)
library(here)

# Load and label data
bisley_1 <- read.csv(here::here("data", 'QuebradaCuenca1-Bisley.csv'), na = c("-99999", "")) |> janitor::clean_names()
bisley_2 <- read.csv(here::here("data","QuebradaCuenca2-Bisley.csv"), na = c("-99999", "")) |> janitor::clean_names()
bisley_3 <- read.csv(here::here("data","QuebradaCuenca3-Bisley.csv"), na = c("-99999", "")) |> janitor::clean_names()
prm <- read.csv(here::here("data","RioMameyesPuenteRoto.csv"), na = c("-99999", "")) |> janitor::clean_names()
