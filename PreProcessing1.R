library(tidyverse)
library(dplyr)

data <- read.csv("E://SEMESTER-6 2023-24//20ADC13-MinorProject-II//Pre_Processing_Swiggy_May_5th//swiggyHotels.csv")
dim(data) 
str(data) 
sum(is.na(data)) 
colSums(is.na(data)) 
sum(duplicated(data)) 
sapply(data, function(x) length(unique(x))) 
table(data$rating) 
data$cost <- as.numeric(gsub("₹", "", data$cost)) 
data$rating <- as.numeric(ifelse(data$rating == "--", NA, data$rating)) 

data <- data %>%
  mutate(rating = ifelse(is.na(rating), median(rating, na.rm = TRUE), rating))
data$rating_count <- recode(data$rating_count, "10K+ ratings" = 1, '5K+ ratings' = 2, '1K+ ratings' = 3, '500+ ratings' = 4, '50+ ratings' = 5, '100+ ratings' = 6, '20+ ratings' = 7, "Too Few Ratings" = 8)
data$rating_count
table(data$rating_count)
data <- data %>%
  select(-lic_no, -link, -address)

str(data)

write.csv(data, "E://SEMESTER-6 2023-24//20ADC13-MinorProject-II//Pre_Processing_Swiggy_May_5th//swiggyHotelsCleaned.csv")


