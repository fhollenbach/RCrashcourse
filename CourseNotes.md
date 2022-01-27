*R* Crash Course CBS
================
Florian M. Hollenbach
2022-01-26

# Getting Started in *R* & RStudio

In this class we will work with and analyze data in *R*. *R* is a
programming language that is widely used for data manipulation,
visualization, and analysis. *R* is an open source program and is free
for anyone. Many of the functions and packages (more on this later) we
will use within *R* are written by other *R* users. While we work with
the *R* program, we will use a different program as the graphical
interface. Specifically, we will use the RStudio IDE (integrated
development environment) to work in *R*. Both programs are available for
free.

*R* can be very hard to learn initially, especially if you have never
programmed before. You will encounter situations where you are
completely lost and might have no idea what to do or what the next step
should be. **This is completely normal!** Hadley Wickham works for
RStudio and is one of the most prolific programmers in R. We will work
with many of his packages throughout the course. As Hadley notes, it is
completely normal to feel lost when starting to program:
<center>
<img src="images/wickham.jpeg" title="fig:" style="width:30.0%" alt="Hadley Wickham" />
</center>

In addition, it is important that you ask question when you are stuck.
We will have a discussion forum on Canvas and you should try to make use
of it as much as possible. If you are stuck and don’t know where to go
next, ask in class or in the discussion forum. **There are no stupid
questions!**

## Installing *R* & RStudio

The first step is to correctly install *R* on your machine. Please go to
<https://cloud.r-project.org/>. Then click on the link to download the
latest version of *R* for your specific operating system. Once you have
downloaded the program, follow the general instructions to install *R*.

After installing *R*, we need to install the RStudio IDE. You can
download the latest version of RStudio
[here](https://www.rstudio.com/products/rstudio/download/#download).
Once you have downloaded RStudio, follow the instructions and install
the program.

Once you have installed both programs, open up RStudio. You should see
something like this:
<center>
![RStudio Starting Screen](images/Rstudio.png "fig:")
</center>

This is the RStudio program. We will work with this program when
manipulating, analyzing, or visualizing any data. Start by looking
around in RStudio and try to familiarize yourself with the program.

You can adjust the appearance (for example, font or background color) if
you click on RStudio → Preferences → Appearance.

## Getting started with *R* & RStudio

In the console, you can write code that is immediately executed (or
evaluated) by *R* once you hit enter. For example, set the cursor by
clicking to the right of to the little angle bracket \>.

Now type `4+4` and hit enter/return. You should see that *R* evaluates
the command and prints the solution and look like this.
<center>
![Console Results](images/calc.png "fig:")
</center>

Just note that in the following text, the output looks slightly
different when commands are evaluated:

``` r
4+4
```

    ## [1] 8

After *R* prints the result of the evaluated command, it once again
provides the angle bracket, telling us that *R* is ready to execute the
next command. *R* is a really good calculator, try entering some simple
calculations in the console and have *R* execute them. The following
mathematical operators are probably most often used: - `+`: addition

-   `-`: subtraction

-   `/`: division

-   `*`: multiplication

-   `^`: exponentiation

-   `sqrt()`: square root

Try out some calculations yourself! Note that *R* follows standard order
of operations rules, so it can be important to use parentheses.

``` r
7 + 3/5
```

    ## [1] 7.6

``` r
(7 + 3)/5
```

    ## [1] 2

*R* also has operators to evaluate logical expressions, meaning *R*
evaluates whether a statement is *true* or *false*:

-   `==`: is equal to

-   `!=`: is NOT equal to

-   `<`: smaller than

-   `>`: greater than

For example, we can ask *R* whether three is smaller than five or
whether seven is equal to 0:

``` r
3 < 5
```

    ## [1] TRUE

``` r
7 == 0
```

    ## [1] FALSE

We can also connect different logical statements with the logical
operators for *and* or *or*: `&`; `|`:

``` r
3 < 5 & 7 == 0
```

    ## [1] FALSE

``` r
3 < 5 | 7 == 0 
```

    ## [1] TRUE

The `#` operator is special in *R*, as it denotes comments. Anything
that is in a line behind the `#` is ignored by *R* and not evaluated.
Try writing `# 3 + 4` and hit return. You will see that *R* does not
evaluate the command. The `#` is used to add comments into rcode, we
will return to the importance of this later.

Anything you write in the console is immediately interpreted by *R* once
you hit `Enter`/`Return`. In general, we could enter any command here in
the **Console** and have *R* execute the command. Executing commands
directly in the console is bad practice, however, and should be avoided
as much as possible. When we write and evaluate code directly in the
**Console** it is executed at once and then lost. Similarly, if you
point and click to estimate models or created graphs (for example in
Stata), it is hard to remember exactly what you have done and not
possible for others to reproduce your code. Think of you using a sheet
of paper to make a calculation and then immediately discarding the piece
of paper.

Instead of working directly in the Console, we write *Rcode* in a basic
script that we can save (this is equivalent to a do-file, if you have
worked with Stata before). Writing code in the script will allow us to
save our code and re-execute the commands at any time in the future.
Working with scripts also ensures that our work is *reproducible*, i.e.,
others can go back and check whether our work was correct. This is of
great importance, especially when doing scientific research.

To open a new *rscript*, click on the little white plus in the upper
left corner of RStudio and select `R Script`.
<center>
<img src="images/rscript.png" style="width:25.0%" alt="Opening Rscripts" />
<img src="images/rscript2.png" style="width:22.0%" alt="Opening Rscripts" />
</center>

Once you have an rscript open, the first step should be to save it
somewhere sensible. For example, you might create a folder for this
course and save all rscripts for class in that folder. You should pick a
name for your rscript that makes sense and reminds you about the
contents of the script. For example, you could save this first rscript
as `Rcrashcourse.R`.

**You should practice writing anything you do in *R* in a rscript** and
execute the code from the script. Start by repeating a few of the simple
calculations that you did above. Write each calculation in a separate
line:

``` r
4+4
```

    ## [1] 8

``` r
9+2
```

    ## [1] 11

``` r
3/2
```

    ## [1] 1.5

You might notice that nothing happens when you write code in the rscript
and hit enter. To execute the rcode that is in our script, we have to
send it to the console. We can do so by having the cursor in the line we
want to execute and then hitting `Ctrl + Enter` (Windows) or
`Command + Return` (Mac). Alternatively, you can select one or multiple
lines to execute and then hit `Ctrl + Enter` (Windows) or
`Command + Return` (Mac). Try selecting some code you wrote by executing
the line.

<center>
<img src="images/execute.png" title="fig:" style="width:35.0%" alt="Executing code from rscripts" />
</center>

It is good practice to add plenty of comments to your rscripts, so that
others can understand what you are doing (and why). It will also help
your future self when you open old code. The comments will help you
remember why you wrote certain code and what your reasoning was.
Remember, we can include comments using the `#` symbol. Anything in a
line behind the `#` symbol will not be executed by *R*.

``` r
# this is our first rscript
# in the first line we calculate four plus four
4+4 # comments can also go behind a command we want to execute, anything before # will still be executed
```

    ## [1] 8

``` r
#### we can also use multiple # to mark comments
# or we can have an empty comment line
#
#
# next we calculate nine plus two 
9+2 
```

    ## [1] 11

``` r
# next we want to divide 3 by 2
3/2
```

    ## [1] 1.5

## R programming language

As with any program, there are different types of variables/data in *R*.
The types you will encounter closely follow types of variables you
should have encountered in previous methods courses. In our class, we
will focus on the following types of data:[1]  
- character - double/numeric - factor - logical

*Character* data is anything that includes non-numeric characters and is
not logical. Characters are known as *strings* in Stata. In *R*,
character variables are depicted and entered inside quotation marks.

``` r
"Florian" ## florian is of type character
```

    ## [1] "Florian"

``` r
class("florian")
```

    ## [1] "character"

``` r
"Florian is a professor" ## is also one character
```

    ## [1] "Florian is a professor"

``` r
"123" ## if you include numbers in quotation marks, R interprets them as characters 
```

    ## [1] "123"

``` r
### this would not work, but try it: "1" + "3"R won't perform calculations on character objects
```

*Numeric* data is any variables that are *real* numbers, those are the
objects that you can perform mathematical operations on. For our
purposes, we will use the terms *numeric* and *double* interchangeably.
Even if you enter a “full” number, *R* will interpret as being numeric
type, i.e., `1` is interpreted as `1.0`.

``` r
1 ## is numeric
```

    ## [1] 1

``` r
class(1)
```

    ## [1] "numeric"

``` r
1 == 1.000 ### is 1 the same as 1.000
```

    ## [1] TRUE

``` r
1 + 3 ## if perform calculations on multiple numeric types, the result will also be numeric
```

    ## [1] 4

*Factor* data are categorical variables that can be either numeric or
character but distinguish a certain (fixed) number of categories. For
example, you could have a variable that distinguishes hair color and can
take the following values: “brown,” “black,” “blond.” Factor variables
can be unordered (such as hair color) or have an intrinsic order. For
example, if you are describing education levels as a categorical
variable, we usually have a clear order: “no degree,” “high school,”
“Bachelor,” post-graduate degree”, etc. *R* can accomodate both
unordered and ordered categorical variables.

``` r
haircolor <- factor(c("brown", "blond", "black")) ## we are creating a factor variable that can take three values: brown, blond, black

education <- factor(c("no degree", "high school", "Bachelor", "post-graduate degree"), ordered = TRUE) ### education is also a factor variable, but with an intrinsic ordering
education ## as you can see, R denotes the order of the different levels
```

    ## [1] no degree            high school          Bachelor            
    ## [4] post-graduate degree
    ## Levels: Bachelor < high school < no degree < post-graduate degree

*Logical* variables can take only two values `TRUE` or `FALSE`, which is
interpreted by *R* in binary form as `1` and `0`. The output of logical
operations is always of type *logical*. We can use *logical* variables
to run conditional operations.

``` r
1 == 1 ## TRUE
```

    ## [1] TRUE

``` r
1 < 0 ## FALSE
```

    ## [1] FALSE

## Objects? What are objects?

*R* is an *object oriented programming (OOP)* language, which means that
everything in *R* is organized around **named objects**. These objects
can come in different types, such as: - functions - data frames -
matrices - vectors - lists

One important operator in *R* is the **assignment operator**. With the
assignment operator we can assign values/numbers/words to objects that
are remembered by *R*. There are actually two assignment operators in
*R*:

1.  `<-`

2.  `=`

It doesn’t really matter which one you use, but you should decide early
and use one consistently. In this course, the examples will all use the
`<-` assignment operator. You can think of the arrow assigment symbols
`<-` as `gets`.

For example, say we might want *R* to remember an object that contains
my name, so we assign the word ‘Florian’ to the object called name.
Object names have to start with a letter but can include numbers and
other symbols. They cannot include empty spaces. It is good practice to
only use lowercase letters, numbers, and `_` in your object names.[2]
You should always try use reasonable and informative names for your
objects, so that you can remember what are the contents of a given
object.

``` r
name <- 'Florian' ## object 'name' gets assigned the character vector 'Florian'
```

In this course we will primarily use *function*, *data frames*, and
*vectors*. *Functions* usually take one or more inputs (called
arguments), perform some operation on the input, and generate an output.
For example, the `sqrt()` operator mentioned above is a function that
takes one *argument*.

``` r
sqrt(9) ## sqrt() is the function, the input here is 9, the function takes the input and calculates the square root, it then outputs the result
```

    ## [1] 3

*Vectors* are a simple data structure in *R* that *N* contain elements
of one type. A vector is defined by its length, which is the number of
elements it contains. Vectors are created by using the function `c()`
(combine) and separating the individual elements by commas. It’s
important to note that all elements of the vector must be of the same
type of variable. For example, if you vector includes numeric and
character data, R will automatically make all numbers into characters.
To create a simple vector of numbers and assign it to the object
`number_example` we would write:

``` r
example_numbers <- c(1, 2, 3, 4, 5) ### object name assignment operator and object contents
```

To print the content (or if too large a preview of the content) of an
object, you can just type and execute the object name or use the
`print()` function. Of course, the object has to exist, i.e., you may
have to have created it first. You can access specific elements in a
vector with square brackets `[]` behind the object name and the specific
location number of element.

``` r
example_numbers ## show all elements
```

    ## [1] 1 2 3 4 5

``` r
print(example_numbers) ## print content of object
```

    ## [1] 1 2 3 4 5

``` r
example_numbers[1] ## only show the first element
```

    ## [1] 1

*Data frames* are objects that contain multiple (many) observations for
multiple variables. You could think of each variable being a vector by
itself. Then the variables are bound together into a data frame. Each
variable then becomes one column of the data frame. For example, assume
we have data on five students. We have recorded their names, height,
birth year, and favorite color.

First, let’s create the vectors for each of these variables. It is
important, of course, that the data for each person is in the same
location in each vector, i.e., if Anna is the first name, we also have
to first enter her height and birth year.

``` r
names <- c("Anna", "Otto", "Emmy", "Hanna", "Signe") ## a vector of characters
names
```

    ## [1] "Anna"  "Otto"  "Emmy"  "Hanna" "Signe"

``` r
height <- c(1.75, 1.52, 1.89, 1.66, 1.55) ## vector of numeric data, note that R uses . to as the decimal point
height
```

    ## [1] 1.75 1.52 1.89 1.66 1.55

``` r
birth_year <- c(1990, 1986, 1995, 1992, 1991) ## vector of numeric data
birth_year
```

    ## [1] 1990 1986 1995 1992 1991

Now we have three different vectors, each including the observations for
five students in terms of their names, height, and birth year. We can
combine these variables into a data frame using the `data.frame()`
function.

``` r
student_df <- data.frame(names, height, birth_year)
student_df
```

    ##   names height birth_year
    ## 1  Anna   1.75       1990
    ## 2  Otto   1.52       1986
    ## 3  Emmy   1.89       1995
    ## 4 Hanna   1.66       1992
    ## 5 Signe   1.55       1991

Each of the vectors are now one column in the new data frame, which we
called `student_df`. Each row in the data frame corresponds to the data
(name, height, birth year) for one person (observation). Note also how
you can assign existing objects to new objects. We can again access
specific elements of the data frame with the square brackets `[]`.
However, since the data frame has two dimensions, we need to specify the
location of the element by *row* and *column*, e.g.,
`student_df[row, column]`.

``` r
student_df[1,1] ## element in first row, first column
```

    ## [1] "Anna"

``` r
student_df[2,1] ## element in second row, first column
```

    ## [1] "Otto"

``` r
student_df[1,2] ## element in first row, second column
```

    ## [1] 1.75

``` r
student_df[1, ] ## all elements in first row
```

    ##   names height birth_year
    ## 1  Anna   1.75       1990

``` r
student_df[ ,1] ## all elements in first column
```

    ## [1] "Anna"  "Otto"  "Emmy"  "Hanna" "Signe"

[1] There are other types of data as well, but we won’t encounter them
much. For example, there is a specific class for *complex* numbers and
one for *integers*. We won’t make very much use of those types and will
ignore them for now.

[2] See here for a complete style guide for programming in R:
(<https://style.tidyverse.org/index.html>)\[<https://style.tidyverse.org/index.html>\]
