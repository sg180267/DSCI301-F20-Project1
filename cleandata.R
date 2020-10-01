library(here)
library(tidyverse)

co_data <- here("COVID_DATASET.csv")


covid_data <- read_csv("C:/Users/Steph/Downloads/DSCI301/COVID_DATASET.csv",
                       col_types = 
                         cols(
                           `location` = col_character(),
                           `country` = col_character(),
                           `gender` = col_character(),
                           `age` = col_number(),
                           `death` = col_number(),
                           `recovered` = col_number(),
                           `symptom` = col_character()
                         ))
df <- covid_data[-c(4, 22:27)]