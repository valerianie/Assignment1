#############################################
# Assignment 1                              #
# Collaborative Social Science Data Analysis#
# Wiebke Weiger                             #
#############################################


# Dataset of interest: Effectiveness of Insect Sprays


data("InsectSprays") # loads the dataset (one of the pre-installed R data sets)


### Get a general overview over the dataset:

names(InsectSprays) # gives the names of the two variables: "count" and "spray"

?InsectSprays # gives some general information on the data set:
# The dataset contains the counts of insects in agricultural experimental units 
# treated with different insecticides.
# It's a data frame with 72 observations on 2 variables
# The variable "count" is the Insect count, it's a numeric variable
# The variable "spray" is the type of spray, it's a factor variable

view(InsectSprays) # shows the whole dataset as a table in the data viewer
# the variable "spray" is made up of 6 levels (named A to F)


# closer look at the variable "count":

summary(InsectSprays$count)
#  Min. 1st Qu. Median  Mean  3rd Qu.   Max.
#  0.00   3.00    7.00  9.50    14.25  26.00

# Plotting a histogram:
hist(InsectSprays$count) # shows a histogram of "count"
# histogram shows skewed distribution
# data contains zeros, therefore not useful to perform natural log transformation

plot(InsectSprays$spray, InsectSprays$count)
# the plot gives a graphic illustration of the counts of insects treated with 
# the 6 differen types of sprays


# Variation in the data:
var(InsectSprays$count) # variance: 51.89
sd(InsectSprays$count)  # standard error: 7.20






#############################################
# Citation of Software:

# R Core Team (2015). R: A language and environment for
# statistical computing. R Foundation for Statistical Computing,
# Vienna, Austria. URL https://www.R-project.org/.
