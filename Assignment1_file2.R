#################################
###    title:  A.1 Rfile 2    ###
### author:  Valeria Nieberg  ###
###    date: "25.09.2015"     ###
#################################

## can you see this?

# this r script is the third file of our first assignment. it is linked to the other 
# files. it is not included in our master r script, which only loads those files 
# working with r core datasets. this was an attepmt to work with a dataset which
# we read into r.

#####################
#Read datar files into R
#####################
main_data <- read.csv("~/git_repos/assignment_1/Assignment1/main_data.csv", header=FALSE)

#####################
#Link Files with Source Command
#####################
source('Assignment1_dofile.R')
source('Assignment1_Wiebke.R')

#####################
#Data Set
#####################

# here i tried to work with the data. however, the descriptive statistics 
# were conducted in the other two files (Assignment1_dofile and Assignment1_Wiebke)

View(main_data)
names(main_data)
names(main_data) <- c("iso2c","year","country", "fertilizer_consumption", "usd")

summary(main_data$fertilizer_consumption)

main_data$fertilizer_consumption<-as.numeric(main_data$fertilizer_consumption)
?main_data

#####################
#Citation of Software
#####################

citation()

## R Core Team (2014). R: A language and environment for
## statistical computing. R Foundation for Statistical Computing,
## Vienna, Austria. URL http://www.R-project.org/.
