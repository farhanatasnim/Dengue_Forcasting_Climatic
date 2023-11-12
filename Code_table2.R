library(readr)

# install.packages("lmtest")
library(lmtest)

install.packages("randomForest") 
library(randomForest) 


data_sanjuan <- read_csv("C:\\Users\\Farhana Tasnim\\Coursera\\Capstone\\Dataset\\Sanjuan_data_weekly.csv")
head(data_sanjuan)


data_iquitos <- read_csv("C:\\Users\\Farhana Tasnim\\Coursera\\Capstone\\Dataset\\Iquitos_data_weekly.csv")
head(data_iquitos)

data_ahmedabad <- read_csv("C:\\Users\\Farhana Tasnim\\Coursera\\Capstone\\Dataset\\Ahmedabad_data_weekly.csv")
head(data_ahmedabad)
set.seed(1)

#--------------------------SANJUAN---------------------------------

# Short Term Prediction 26 weeks
total_obs_sanjuan<- nrow(data_sanjuan)

train_set_sanjuan_short <- data_sanjuan[1:1170, ]
test_set_sanjuan_short <- data_sanjuan[1171:total_obs_sanjuan, ]

# Longterm Prediction 52 weeks
train_set_sanjuan_long <- data_sanjuan[1:1144, ]
test_set_sanjuan_long <- data_sanjuan[1145:total_obs_sanjuan, ]


# 1: Polynomial Regression X^2 
lm.fit2=lm(Cases~poly(Rain, 2), data=train_set_sanjuan_long ) 
mean(abs(data_sanjuan$Cases - predict (lm.fit2, test_set_sanjuan_long)))
# 2: Polynomial Regression X^5
lm.fit3=lm(Cases~poly(Rain, 5), data=train_set_sanjuan_long ) 
mean(abs(data_sanjuan$Cases - predict (lm.fit3, test_set_sanjuan_long)))
# 3. Random Forest
rf.fit <- randomForest(Cases ~ Rain, data = train_set_sanjuan_long, mtry = 2, 
                         importance = TRUE, na.action = na.omit) 
mean(abs(data_sanjuan$Cases - predict (rf.fit, test_set_sanjuan_long)))


#--------------------------AHMEDABAD---------------------------------
total_obs_ahmedabad<- nrow(data_ahmedabad)

# Short Term Prediction 26 weeks
train_set_ahmedabad_short <- data_ahmedabad[1:398, ]
test_set_ahmedabad_short <- data_ahmedabad[399:total_obs_ahmedabad, ]

# Longterm Prediction 52 weeks
train_set_ahmedabad_long <- data_ahmedabad[1:372, ]
test_set_ahmedabad_long <- data_ahmedabad[373:total_obs_ahmedabad, ]


# 1: Polynomial Regression X^2 
lm.fit2=lm(Cases~poly(Rainfall, 2), data=train_set_ahmedabad_long ) 
mean(abs(data_ahmedabad$Cases - predict (lm.fit2, test_set_ahmedabad_long)))
# 2: Polynomial Regression X^5
lm.fit3=lm(Cases~poly(Rainfall, 5), data=train_set_ahmedabad_long ) 
mean(abs(data_ahmedabad$Cases - predict (lm.fit3, test_set_ahmedabad_long)))
# 3. Random Forest
rf.fit <- randomForest(Cases ~ Rainfall, data = train_set_ahmedabad_long, mtry = 2, 
                       importance = TRUE, na.action = na.omit) 
mean(abs(data_ahmedabad$Cases - predict (rf.fit, test_set_ahmedabad_long)))

#--------------------------IQUITOS---------------------------------

total_obs_iquitos<- nrow(data_iquitos)

# Short Term Prediction 26 weeks
train_set_iquitos_short <- data_iquitos[1:572, ]
test_set_iquitos_short <- data_iquitos[573:total_obs_iquitos, ]

# Longterm Prediction 52 weeks
train_set_iquitos_long <- data_iquitos[1:546, ]
test_set_iquitos_long <- data_iquitos[547:total_obs_iquitos, ]


# 1:Polynomial Regression X^2 
lm.fit2=lm(Cases~poly(Rain, 2), data=train_set_iquitos_long ) 
mean(abs(data_iquitos$Cases - predict (lm.fit2, test_set_iquitos_long)))
# 2:Polynomial Regression  X^5 
lm.fit3=lm(Cases~poly(Rain, 5), data=train_set_iquitos_long ) 
mean(abs(data_iquitos$Cases - predict (lm.fit3, test_set_iquitos_long)))
# 3. Random Forest
rf.fit <- randomForest(Cases ~ Rain, data = train_set_iquitos_long, mtry = 2, 
                       importance = TRUE, na.action = na.omit) 
mean(abs(data_iquitos$Cases - predict (rf.fit, test_set_iquitos_long)))
