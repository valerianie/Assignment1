#MPP-E1180: Introduction to Collaborative Social Science Data Analysis
#Pair Assignment 1
#Jasmin Cantzler & Valeria Nieberg

###Data Set 1
data()
# lists internal data sets
data(women)
# loads "women" data set
?women
# provides data description
names(women)
# finds variable names (in this case two, "height" and "weight")
colors = c("violet")
# specifies a color
hist(women$height,
     main='Average Height for American Women aged 30-39',
     xlab='height in in',
     col=colors)
colors = c("blue")
# specifies a color
hist(women$weight,
     main='Weight for American Women aged 30-39',
     xlab='weight in lbs',
     col=colors)
#creates histogram for the two variables "height" and "weight"
mean(women$weight)
#calculates the mean, average mean weight is 136.73 lbs (62.02kg)
mean(women$height)
#calculates the mean, average mean height is 65 in (165.1 cm)
median(women$weight)
# median weight 135
median(women$height)
# median height 65
range(women$weight)
# calculates the range, 115-164 lbs
range(women$height)
# calculates the range, 58-72 in
plot(women$height, women$weight,
    main='Average Height and Weight for American Women aged 30-39',
    xlab='weight in lbs',
    ylab='height in in')
cor.test(women$weight, women$height)
#weight and height are positively correlated


