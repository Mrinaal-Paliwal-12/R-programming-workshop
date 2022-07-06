#line graphs 
#p , o , x
#type - p(points),x(lines),o(both lines and points)
png("lineGrapgh.jpeg")
plot(airquality$Temp,type="o")
lines(airquality$Ozone,type="l",col="green")
lines(airquality$Solar.R,type="l",col="red")
dev.off()




temp=c(33,34,32,12,34)
humidity=c(56,43,32,51,39)
nums=c(2,3,4,57,43)


png("lineGrapgh1.jpeg")
plot(temp,type="o")
lines(humidity,type="l",col="green")
lines(nums,type="l",col="red")
dev.off()
