library(tidyr)
final_data <- read.csv("E://SEMESTER-6 2023-24//20ADC13-MinorProject-II//Pre_Processing_Swiggy_May_5th//swiggyCombined.csv")
names(final_data)
final_data <- final_data %>%
  select(-X)
# Load the required library
library(stringr)

# Split the 'city' column into 'region' and 'city'
split_data <- str_split(final_data$city, ",", simplify = TRUE)

# Assign the split values to new columns
final_data$region <- trimws(split_data[, 1])  # Trim leading/trailing whitespace
final_data$city <- trimws(split_data[, 2])    # Trim leading/trailing whitespace

# Print the updated dataframe
print(final_data)

write.csv(final_data, "E://SEMESTER-6 2023-24//20ADC13-MinorProject-II//Pre_Processing_Swiggy_May_5th//swiggyCombined_Cleaned_Final.csv")
