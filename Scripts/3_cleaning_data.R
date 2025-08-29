# Load libraries
library(tidyverse)
library(lubridate)
library(here)
library(janitor)

#sourcing the data
source("scripts/read_data.R")

# bind dataframes
bisley_all <- bind_rows(bisley_1, bisley_2, bisley_3, prm)

nutrients <- c("k", "no3_n", "mg", "ca", "nh4_n")

#creating a longer df and transforming column names to lower
nutrients_long <- bisley_all %>%
  rename_with(tolower) %>%
  
  #selecting necessary columns for analysis
  select(sample_id, sample_date, all_of(nutrients)) %>%
  
  #creates columns after the pivot - nutrient and concentration
  pivot_longer(cols = all_of(nutrients), names_to = "nutrient", values_to = "concentration") %>%
  
  #changes the type of sample date from char to date type
  mutate(
    sample_date = as.Date(sample_date),
  #filter the data that is not NA and that is greater than 0 
    concentration = as.numeric(concentration)
  ) %>%
  filter(!is.na(concentration), concentration >= 0)