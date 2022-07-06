# regression models in R
#linear regression

#height in cm
height = c(123,141,134,178,156,108,116,119,143,130)    #x

#weight in kg
weight = c(62,85,56,21,47,17,76,92,62,58)      #y

lRegModel = lm(weight~height)

#plot the data on scatterplot
png("linear regression scatterplot.jpeg")
plot(weight,height,col = "red",xlab = "Weight",ylab = "height")
abline(lm(height~weight))
dev.off()
z=data.frame(height=175)
predict(lRegModel)


#--------------------------------------------------------------------------#
data
#weight in kg
LMLungCapcity = lm(data$LungCap~data$Age)


#plot the data on scatterplot
png("Lungcapacity_scatter.jpeg")
plot(data$LungCap,data$Age,col = "red",xlab = "lungcap",ylab = "age")
abline(lm(data$Age~data$LungCap))
dev.off()
