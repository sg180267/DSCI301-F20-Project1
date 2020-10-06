
library(tidyverse)

co_data <- "COVID_DATASET.csv"

covid_data <- read_csv(co_data,
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

#source("CleanData.R")

df[, 11][df[, 11] == 0] <- NA
