# install package fortunes

install.packages("fortunes")

# load library

library("fortunes")

# use functionality from the library fortunes

fortune()



### install praise
install.packages("praise")

library(praise)

praise()

praise("${Exclamation}! You are all ${adjective} students! ${Exclamation}!")


# installing tidyverse

install.packages("tidyverse")

# load tidyverse

library(tidyverse)

# install tidyr

install.packages("tidyr")

# use functionality in Rstudio without having the package loaded

dplyr::filter()

stats::filter()

# getting help in RStudio

help()

lm()

# loading data with readr: 

read_csv("C:/Users/rcc.ioa/heights.csv")

read_csv("https://raw.githubusercontent.com/phdskat/RCrashcourse2/main/heights.csv")

# saving heights.csv data to an object

heights <- read_csv("https://raw.githubusercontent.com/phdskat/RCrashcourse2/main/heights.csv")

heights

# Viewing your data

View(heights)

# Glance at the data

head(heights)

tail(heights)

# PIPE

heights %>% head()

# Filter

heights %>% filter(sex == "female")

heights %>% filter(age == 45)

filter(heights,age == 45)

# Arranging

heights %>% arrange(-earn)

# Filter then arrange

heights %>% filter(sex == "female") %>% arrange(-earn)

# Select

heights %>% select(sex,age)

# Mutate 

heights %>% mutate(heights_in_cm = height*2.54)

# Save mutate flow

heights_new <- heights %>% mutate(heights_in_cm = height*2.54)

# Example of why the pipe is useful

heights_female <- filter(heights,sex == "female")

arrange(heights_female,-earn)

heights %>% filter(sex == "female") %>% arrange(-earn)

# Data visualiation - geom point

heights %>% ggplot() + geom_geom(aes(x=sex,y=earn))

# Template for data graphing

# data %>% ggplot() + geom_function(aes(x=x,y=y))

# Are older people taller?

heights %>% ggplot(aes(x=age,y=height)) + geom_point() + geom_smooth()

# Comparing height and sex

heights %>% ggplot() + geom_point(aes(x=sex,y=height))

# Earnings and heights

heights %>% ggplot(aes(x=height,y=earn)) + geom_point(colour="red", shape=20) + geom_smooth(colour="red") + theme_dark()

# Help for ggplot()

?ggplot()

# Linear regression

model <- lm(earn ~ age, data = heights)

# Summary 

summary(model)

#IF and IFELSE

if(5>4){print("yes")}

if(1 > 0){print("Non-negative number")} else {print("Negative number")}

ifelse()

# Returning non-character

if(1 > 0){print(1)} else {print(0)}

## TIDY if_else

if_else(4<3,"true","false")

# Testing with heights data

if(heights$earn[1]<heights$earn[2]){print("yes the first earnings is lower than the second")}

# Summary

summary(heights)

# Structure (str())

str(heights)

