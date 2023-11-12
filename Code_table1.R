library(readr)

data_sanjuan <- read_csv("C:\\Users\\Farhana Tasnim\\Coursera\\Capstone\\Dataset\\Sanjuan_data_weekly.csv")
head(data_sanjuan)
total_obs<- nrow(data_sanjuan)

data_iquitos <- read_csv("C:\\Users\\Farhana Tasnim\\Coursera\\Capstone\\Dataset\\Iquitos_data_weekly.csv")
head(data_iquitos)

data_ahmedabad <- read_csv("C:\\Users\\Farhana Tasnim\\Coursera\\Capstone\\Dataset\\Ahmedabad_data_weekly.csv")
head(data_ahmedabad)

# GRANGER TEST (Order=2)
grangertest(Cases ~ Rain, order = 2, data = data_sanjuan)
grangertest(Cases ~ Rain, order = 2, data = data_iquitos)
grangertest(Cases ~ Rainfall, order = 2, data = data_ahmedabad)

# GRANGER TEST (Order=4)
grangertest(Cases ~ Rain, order = 4, data = data_sanjuan)
grangertest(Cases ~ Rain, order = 4, data = data_iquitos)
grangertest(Cases ~ Rainfall, order = 4, data = data_ahmedabad)
