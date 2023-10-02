library(readr)
# install.packages("magrittr") # package installations are only needed the first time you use it
# install.packages("dplyr")    # alternative installation of the %>%
# library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)    # alternatively, this also loads %>%

data_sanjuan <- read_csv("C:\\Users\\Farhana Tasnim\\Documents\\Coursera\\Capstone\\Dataset\\Sanjuan_data_weekly.csv")
head(data_sanjuan)
data_wk_sanjuan <- data_sanjuan %>% 
  mutate(Time_in_weeks= (Year-1990)*52+Week-16)
head(data_wk_sanjuan)

data_iquitos <- read_csv("C:\\Users\\Farhana Tasnim\\Documents\\Coursera\\Capstone\\Dataset\\Iquitos_data_weekly.csv")
head(data_iquitos)
data_wk_iquitos <- data_iquitos %>% 
  mutate(Time_in_weeks= (Year-2002)*52+Week)

data_ahmedabad <- read_csv("C:\\Users\\Farhana Tasnim\\Documents\\Coursera\\Capstone\\Dataset\\Ahmedabad_data_weekly.csv")
head(data_ahmedabad)
data_wk_ahmedabad <- data_ahmedabad %>% 
  mutate(Time_in_weeks= (Year-2005)*53+Week)

library(ggplot2)

q1 <- ggplot(data = data_wk_sanjuan) +
  geom_line(mapping = aes(x = Time_in_weeks, y = Cases), color = "red")+ggtitle('Sanjuan')

q2 <- ggplot(data = data_wk_sanjuan) +
  geom_line(mapping = aes(x = Time_in_weeks, y = Rain), color = "blue")

q3 <- ggplot(data = data_wk_iquitos) +
  geom_line(mapping = aes(x = Time_in_weeks, y = Cases), color = "red")+ggtitle('Iquitos')

q4 <- ggplot(data = data_wk_iquitos) +
  geom_line(mapping = aes(x = Time_in_weeks, y = Rain), color = "blue")

q5 <- ggplot(data = data_wk_ahmedabad) +
  geom_line(mapping = aes(x = Time_in_weeks, y = Cases), color = "red")+ggtitle('Ahmedabad')

q6 <- ggplot(data = data_wk_ahmedabad) +
  geom_line(mapping = aes(x = Time_in_weeks, y = Rainfall), color = "blue")

library(magrittr)
library(multipanelfigure)
figure1 <- multi_panel_figure(columns = 3, rows = 2, panel_label_type = "none")
# show the layout
figure1

figure1 %<>%
  fill_panel(q1, column = 1, row = 1) %<>%
  fill_panel(q2, column = 1, row = 2) %<>%
  fill_panel(q3, column = 2, row = 1) %<>%
  fill_panel(q4, column = 2, row = 2) %<>%
  fill_panel(q5, column = 3, row = 1) %<>%
  fill_panel(q6, column = 3, row = 2) 
figure1

