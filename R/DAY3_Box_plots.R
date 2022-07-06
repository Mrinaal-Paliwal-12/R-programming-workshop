#BoxPlots
png("box_plot.jpeg")
boxplot(mtcars$mpg~mtcars$cyl,xlab="no of cylinders",ylab="milege per gallon,",
        col="yellow",notch=TRUE,horizontal=TRUE)
dev.off()

library(aplpack)

png("2dboxPlot.jpeg")
bagplot(mtcars$wt,mtcars$mpg,xlab = "number of cylinders",ylab = "milage per gallon")

dev.off()


airquality
