##### R script for day 2
### author: Florian Hollenbach
### Date 4.2.2022
####


#### packages are one of the reasons why R is so fantastic, 
#### there are thousands of packages out there, 




#### to install package use the install.packages() function
install.packages("fortunes", type = "binary")
##### you only need to install a package once on your computer

### loading the package with the library() function
#### if you want to use a library, you first have to load it
library(fortunes)
### after you close R, you will always have to load 
### the package before you can use it


### call the function
fortune()

#### install the praise packages
install.packages("praise", type = "binary")

### load the package
library(praise)


#### receive some praise
praise()

#### write the praise yourself
praise("${Exclamation}! You are all ${adjective} students! ${Exclamation}!")



#### now let's do some real work
#### install tidyverse
install.packages("tidyverse", type = "binary", dependencies = TRUE)

### load package
library(tidyverse)

#### if you want to specify the package from which the function comes
#### if I want to use the filter() function from stats
stats::filter()

##### load data
height_data <- read_csv("https://raw.githubusercontent.com/phdskat/RCrashcourse2/main/heights.csv")
##### path on computer
#### on mac ~ ~ 
### to get the tilde ~ 
### on danish mac: option and hat key and then space
### on danish windows: Alt Gr and hat key then space


### specifying path on mac: 
### height_data <- read_csv("~/Desktop/height.csv")


### specifying path on windows
#### height_data <- read_csv("C:\\Users\\fho.egb\\Downloads\\heights.csv")

##### headers/ variables names included in csv or not
### if not, specify 
#####    read_csv("C:\\Users\\fho.egb\\Downloads\\heights.csv", col_names = FALSE)


#### looking at the data in the specific browser window
View(height_data)


#### head() 
### first six (n) rows printed
head(height_data, n = 10)


#### tail()
### bottom rows printed
tail(height_data)   


###### pipe operator 
#### %>%  %>% 
##### send data down the pipe to function
height_data %>% 
  tail()

#### arrange orders the data based on variables we specify
height_data <- height_data %>% 
  arrange(age, -height)   ### - in front of variable means decreasing

height_data <- height_data %>% 
  arrange(age, desc(height))  ### desc also decreasing


#### select funtion, selects only certain columns
height_data %>% 
  select(age, height)

height_data %>%  #### select all but age
  select(-age)

height_data %>% 
  select(age, height) %>% 
  arrange(age, -height)


#####
##### IMPORTANT if you don't assign to an object, 
#####  the change is only in the console printed but not permanent

### filter()
#### filtering by values
height_data %>% 
  filter(sex == "male") ### only men


height_data %>% 
  filter(earn == 5000) ### only those with 5000

height_data %>% 
  filter(earn > 2000)     #### remember the logical operators

height_data %>% 
  filter(earn > 2000 & earn < 10000)     #### remember the logical operators

height_data %>% 
  filter(earn >= 2000 & earn <= 10000)     #### remember the logical operators

#### only men who earn between 2000 and 10000

height_data %>% 
  filter(earn >= 2000 & earn <= 10000 & sex == "male")     #### remember the logical operators

height_data %>% 
  filter(earn >= 2000) %>% 
  filter(earn <= 10000) %>% 
  filter(sex == "male") 

### remember the or operator | (option and i on mac )
height_data %>% 
  filter((earn >= 5000 & earn <= 10000) | sex == "male")

###### we can save the changes to new data frame objects
height_male <- height_data %>% 
  filter(sex == "male")

height_female <- height_data %>%
  filter(sex == "female") %>%  ###### same as: sex != "male"
  mutate(height_cm = 2.54*height, 
         earn_in_thousands = earn/1000)


print(height_female)
height_female


### calculating the mean of a variable
height_data %>% 
  summarise(mean(age))

########## 
##### summarizing some variables by groups
height_data %>% 
  group_by(sex) %>%  #### groups data by some variables
  summarise(median(age), ## median of age by group
            mean(age), ## mean of age by group
            sd(age), ## standard deviation of age by group
            min(age), ## minimum value of age by group
            n_distinct(age), ### how many distinct values by group
            IQR(age)) ### interquartile range by group

##### other functions in summary
#### mean(), median()
#### sd(), var()
#### min(), max(), n(), n_distinct()
### IQR() - inter quartile range

our_summary <- height_data %>% 
  group_by(sex, race) %>%  #### groups data by some variables
  summarise(median(age), 
            mean(age), 
            n_distinct(age),
            mean(earn),
            median(height),
            mean(height),
            n())


#### a simple regressino analysis
### lm() function -- linear model (OLS)
### lm(DV ~ IV, data = datasetname)
### multiple independent variables
### lm(DV ~ IV1 + IV2 + IV3, data = datasetname)
### 
### lm()

### on danish mac: option and hat key and then space
### on danish windows: Alt Gr and hat key then space

#### estimate linear model and assign to object named model
model <- lm(earn ~ height, data = height_data)
### print summary
summary(model)

### same but with pipe
model <- height_data %>% 
  lm(earn ~ height, data = .) 
model %>% 
  summary()

##### linear model
##### with covariates
model2 <- height_data %>% 
  lm(earn ~ height + age + ed, data = .)

model2 %>% 
  summary()


###### plots / data visualiztion
## package ggplot2

### with pipe
height_data %>% 
  ggplot(data = .) + geom_point(aes(y = height, x = age, color = sex))  ### . to specify to use data from pipe

### can also put data object in function
ggplot(data = height_data) + 
  theme_bw() +
  geom_point(aes(y = height, x = age, color = sex)) +  ### . to specify to use data from pipe
  geom_smooth(aes(y = height, x = age, color = sex), method = "lm") ### adding a bivariate regression line

### histogram
ggplot(data = height_data) + 
  geom_histogram(aes(x = age))

### density plot
ggplot(data = height_data) + 
  geom_density(aes(x = age))

