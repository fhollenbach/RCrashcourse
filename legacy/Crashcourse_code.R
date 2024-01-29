# Author: Florian M. Hollenbach
# This is the script for the r crashcourse for Benjamin's class
# Date: Feb 01, 2022


#### numeric data is any real number
4/2
1.3*3
##### this will throw an  error, can't add to a character variable
"florian is a professor at CBS" + 3

#### this is just a character, will not perform calculation
"2 + 3"

### a comment is not evaluated, but a character is
#anygiventext
"anygiventext"


### the class function tells you what class an object belongs to
### or what type of variable this is
class("florian")

#### without quotation marks R is looking for an object that is name florian, 
#### this object doesn't exist, so we get an error
florian 

#### factor variables, also called categorical 
factor(c("blond", "brown", "black"))




### types of objects 
## functions
## data frames
## matrices 
## vectors 
### lists 


#### functions
### sqrt(argument)
##### 
sqrt(9)

##### c() -- combine function
c(1, 3, 4, 9)
#### mean() calculates the average
mean()
#### sum() calculates the sum
sum()


mean(c(1, 3, 4, 9))
### this is the same as: 
(1 + 3 + 4 + 9)/4


sum(c(1, 3, 4, 9))
### this is the same as: 
1 + 3 + 4 + 9
#### functions take one or multiple arguments and perform an operation, 
#### then they return the result of the operation



#### assignment operator 
####  <-  looks like an arrow <-
### = is also the assignment operator
names <- c("florian", "thomas", "julia")

grades <-  c(4, 10, 12)

height <- c(174, 188, 155)

### evaluating an object name will print (parts of) its content
names
### can also use the print function
print(names)

grades
print(grades)

names
#### access individual elements using [] and index number
names[1]
names[2]
names[3]

###### type of variables will always have to be the same within a vector
example_numbers <- c(1, 2, 3, 4, 5, 6)
print(example_numbers)
class(example_numbers)
###### type of variables will always have to be the same within a vector
###### adding a character to a numeric vector, R will make all elements be of type character
example_numbers <- c(1, 2, "florian", 4, 5, 6)
print(example_numbers)
class(example_numbers)

##### type of object
#### data frame 
#### data frames / datasets have two important parts: 
#### variables -- columns
#### individual observations -- rows
##### names height birthyear
##### Florian 174  1984
##### Thomas  155  2010
##### Julia   165  2004

names <- c("Anna", "Otto", "Emmy", "Hanna", "Signe") ## a vector of characters
names

height <- c(1.75, 1.52, 1.89, 1.66, 1.55) ## vector of numeric data, note that R uses . to as the decimal point
height

birth_year <- c(1990, 1986, 1995, 1992, 1991) ## vector of numeric data
birth_year
### combine the three vectors into a dataframe
student_df <- data.frame(names, height, birth_year)
student_df

# access the first element
birth_year[1]

##### specify in terms of rows and columns
### dataframe[row, column]
student_df[1,1] #### first number is row, second is the column
student_df[2,1] ### second row, first column

student_df[3,2] ### third row, second column

student_df[1,1] <- "Peter"  

#### only row 1, all columns
student_df[1 , ]
#### only column 2, all rows
student_df[ , 2]


### access names variable
student_df$names
#### access height variable
student_df$height
### it is always better to use variable names instead of column numbers!

### access only the first values in the name variable
student_df$names[2] <- "Pope Francis"

### not that if we change values in the dataframe, the original vectors are not changed
### similarly if we change the original vectors, the dataframe is unaffected
student_df
names[3] <- "Pope Benedict"



###### remove objects from environment
rm(student_df)
## now student_df does not exist anymore
student_df
### same for the vectors
rm(birth_year)
brith_year


### recreate birth_year vector and the data frame
birth_year <- c(1990, 1986, 1995, 1992, 1991) ## vector of numeric data
birth_year
### combine the three vectors into a dataframe
student_df <- data.frame(names, height, birth_year)
student_df

#### create a new variable in our data frame
student_df$favorite_colour <- c("blue", "green", "yellow", "purple", "green")
student_df




##### R is vectorized 
2022 - student_df$birth_year[1]
2022 - student_df$birth_year[2]

student_df$height[1]*100
### we can do the operation for the whole vector in one swoop
2022 - student_df$birth_year

### calculations on the whole vector
student_df$height*100
### assign to a new variable
student_df$height_in_cm <- student_df$height*100

student_df$height_in_inches <- student_df$height_in_cm*0.3937

##### have function evaluate a whole vector
student_df$sqrt_height <- sqrt(student_df$height_in_cm)

##### I want to calculate the ratio of age to height
student_df$age <- 2022 - student_df$birth_year
student_df

### calculate ratio
student_df$height_in_cm[1]/student_df$age[1]
### do it on the whole variable and assign result to new variable
student_df$height_age_ratio <- student_df$height_in_cm / student_df$age

student_df


### if different length, R will repeat the shorter vector
### be careful
numbers <- c(2, 5, 6)
### R will give a warning of the different length
student_df$age / numbers

### calling variable that doesn't exist returns NULL
student_df$age_squared 

#### assign NULL to variable removes it from data frame
student_df$height_age_ratio <- NULL  ### NULL has to be all capital letters, the same true for logical statements TRUE / FALSE
student_df


#### TRUE /FALSE also have to be all capital letters
(1 == 1) == true


