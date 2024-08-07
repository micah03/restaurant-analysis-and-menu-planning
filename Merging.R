# Merge the dataframes based on id and restaurant.code
df <- read.csv("E:\SEMESTER-6 2023-24\20ADC13-MinorProject-II\Pre_Processing_Swiggy_May_5th\Swiggy.csv")
df2 <- read.csv("E:\SEMESTER-6 2023-24\20ADC13-MinorProject-II\Pre_Processing_Swiggy_May_5th\swiggyHotelsCleaned.csv")
merged_df <- merge(df, df2, by.x = "restaurant.code", by.y = "id")

# Print the merged dataframe 
print(merged_df)

write.csv("E:\SEMESTER-6 2023-24\20ADC13-MinorProject-II\Pre_Processing_Swiggy_May_5th\swiggyCombined_Cleaned_Final.csv")
