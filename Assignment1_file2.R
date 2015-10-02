#################################
###    title:  A.1 Rfile 2    ###
### author:  Valeria Nieberg  ###
###    date: "25.09.2015"     ###
#################################

#####################
#Read Data into R
#####################
main_data <- read.csv("~/git_repos/assignment_1/Assignment1/main_data.csv", header=FALSE)

#####################
#Link Files with Source Command
#####################
source('Assignment1_dofile.R')

#####################
#Data Set
#####################

View(main_data)
names(main_data)
names(main_data) <- c("iso2c","year","country", "fertilizer_consumption", "usd")

summary(main_data$fertilizer_consumption)

main_data$fertilizer_consumption<-as.numeric(main_data$fertilizer_consumption)
?main_data

mean(main_data$fertilizer_consumption)





#####################
#Citation of Software
#####################

citation()

## R Core Team (2014). R: A language and environment for
## statistical computing. R Foundation for Statistical Computing,
## Vienna, Austria. URL http://www.R-project.org/.
