#MPP-E1180: Introduction to Collaborative Social Science Data Analysis
#Pair Assignment 1
#Jasmin Cantzler, Valeria Nieberg & Wiebke Weiger

###Data Set 1
data()
# lists internal data sets
data(women)
# loads "women" data set
?women
# provides data description:
###Description: This data set gives the average heights and weights for American women aged 30–39.
###Usage:women
###Format: A data frame with 15 observations on 2 variables.
###[,1]	height	numeric	Height (in)
###[,2]	weight	numeric	Weight (lbs)
###Details: The data set appears to have been taken from the American Society of Actuaries Build and Blood Pressure Study for some (unknown to us) earlier year. The World Almanac notes: “The figures represent weights in ordinary indoor clothing and shoes, and heights with shoes”.
###Source: The World Almanac and Book of Facts, 1975.

names(women)
# finds variable names (in this case two, "height" and "weight")

# Convert the variables in centimeters and kilograms
women$height_cm<-women$height*2.54
women$weight_kg<-women$weight*0.45359237

colors = c("violet")
# specifies a color
hist(women$height_cm,
     main='Average Height for American Women aged 30-39',
     xlab='height in cm',
     col=colors)
colors = c("blue")
# specifies a color
hist(women$weight_kg,
     main='Weight for American Women aged 30-39',
     xlab='weight in kg',
     col=colors)
#creates histogram for the two variables "height" and "weight"
mean(women$weight_kg)
#calculates the mean, average mean weight is 136.73 lbs (62.02kg)
mean(women$height_cm)
#calculates the mean, average mean height is 65 in (165.1 cm)
median(women$weight_kg)
# median weight 135
median(women$height_cm)
# median height 165.1
range(women$weight_kg)
# calculates the range, 52,16kg - 74,39kg
range(women$height_cm)
# calculates the range, 147,32 cm to 182,88 cm
plot(women$height_cm, women$weight_kg,
    main='Average Height and Weight for American Women aged 30-39',
    xlab='weight in kg',
    ylab='height in cm')
cor.test(women$weight_kg, women$height_cm)
#weight and height are positively correlated

# Citation of Software:

# R Core Team (2015). R: A language and environment for
# statistical computing. R Foundation for Statistical Computing,
# Vienna, Austria. URL https://www.R-project.org/.

