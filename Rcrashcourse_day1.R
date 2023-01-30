##### Author: Florian Hollenbach
##### Date: 03-02-2022
##### Code for RCrashcourse

#### R is a nice calculator
#### Some calculations, adding and subtracting
4 + 3  
3 - 9 

#####
#### numeric, double
-7 + 3 

### characters
"florian"

##### This will throw an error, can't add a number to a character
3 + "florian"


#### categorical is called factor in R
factor(c("brown", "black", "blond")) ### creating a factor

# multiple lines
# comments
# need # on every line

#### ordered factor
factor(levels = c("no school", "high school", "bachelor"), ordered = TRUE)



##### objects
### data frames - data sets
### vectors
### functions

### functions
#### function(inputs/argument)
#### function takes the input, does some kind operation, returns result

### square root function take number and returns square root
sqrt(9)


#### c() function stands for combine
c(1,2,3,4,5,6)


#### assignment operator <-  or  =
names_long <- c("florian", "peter", "john", "roger",
          "sarah", "ulla")

#### object not found error, 
#### because we have not created or loaded this object
names1

#### second vector
names_short  <- c("rolf", "ernst")
#### we can combine the two vectors
names <- c(names_short, names_long)

##### remove objects with the rm() function
rm(names)

#### vector of numbers
height <- c(178.9, 198, 155)
height

##### if we have numeric and character types in one vector, 
##### r converts all to character
height2 <- c(178.9, 198, 155, "florian")
height2



### five student names
names <- c("Anna", "Otto", "Emmy", "Hannah", "Signe")
### their height
height <- c(1.75, 1.52, 1.89, 1.66, 1.55)
#### their birth year
birth_year <- c(1990, 1986, 1995, 1992, 1991)

#### square brackets [ ] are used for indexing
names[1] ## only first name
names[2] ## only second name
##### if you want multiple elements need to use combine
### inside square brackets
names[c(1, 5)]

###### dataframes
##### combine the three vectors into a dataframe
student_df <- data.frame(names, birth_year, height)
student_df

#### indexing in data frame is for
### rows and columns, separated by comma
##  student_df[rowidex, columnindex]
student_df[1, 1] ### first row, first column
student_df[2, 1] ## second row, first column

##### if you want the all columns, leave column index empty
student_df[1, ] ## first row
student_df[ , 1] ### first column
#### multiple rows
student_df[c(1,3), 1] 

student_df[c(1,3), ]


###### variables in dataframes are named, accessible with $ sign
student_df$birth_year

student_df$names

### access individual elements with square brackets without comma
student_df$height


student_df
View(student_df)

### create data frame with 4 variables,
### 1 character variable
### 3 of the variables are numeric, 
### 6 observations per variable

firm <- c("IBM", "Facebook", "Google", "GM", "Apple", "VW")
industry <- c("Tech", "Tech", "Tech", "Cars", "Tech", "Cars")
profits <- c(100, 10002, 2222, 3000000, 32222, 10002)
employees <- c(1000, 12312, 12321, 233, 11123, 987)
RD <-  c(123213, 1246565, 1223, 65634, 3223, 9791872)

firm_data <- data.frame(firm, industry, profits, employees, RD)



###### R is a vectorized language
#### divide by 1000
firm_data$profits[1]/1000
firm_data$profits[1]

### perform calculation on whole vector
firm_data$profits/1000

###### creating new variables
##### access dataset with new variable name and assign values
firm_data$RD_per_employee <- c(12, 32, 42, 45, 22, 11)


######## how to delete a variable
##### assign NULL value, has to be all caps
firm_data$RD_per_employee <- NULL


### calculate RD per employee and assign to new variable
firm_data$RD_per_employee <- firm_data$RD / firm_data$employees
#### profits in 1000s and assign to new variable
firm_data$profits_in_1000s <- firm_data$profits/1000


##### functions can also be applied to whole vectors
##### calculate the square root of all profit values
sqrt(firm_data$profits)
###### some important functions
### mean, standard deviation, median, sum, variance
### sum
sum(firm_data$profits)
### mean/average
mean(firm_data$profits)
#### median
median(firm_data$profits)
### standard deviation
sd(firm_data$profits)
### variance
var(firm_data$profits)

#### length() gives the number of elements in vectors
length(firm_data$profits)
#### for a data frame, you can ask about the dimensions
dim(firm_data) ## number of rows and columns

###### calculate mean by hand using sum and length function
mean_hand <- sum(firm_data$profits)/length(firm_data$profits)
### use mean function
mean_auto <- mean(firm_data$profits)
#### are these the same? 
mean_auto == mean_hand

#### another look at factors
#### at the moment only character variable
firm_data$industry
#### tell R this is a factor, unordered
firm_data$industry <- factor(firm_data$industry, 
                             levels = c("Tech", "Cars"), 
                             ordered = FALSE)
### now R knows it has levels
firm_data$industry
