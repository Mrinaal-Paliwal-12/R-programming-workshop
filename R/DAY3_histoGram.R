png("histogram.jpeg")
hist(airquality$Temp,main = "temp observed at airport",xlim=c(50,100),ylim=c(0,25),frequency=FALSE,
     col = "magenta",breaks = c(10,40,70,100))
setwd("D:\\vk\\R\\graphs")
dev.off()





png("histogram1.jpeg")
hist(airquality$Temp,main = "temp observed at airport",xlim=c(50,100),ylim=c(0,25),frequency=FALSE,
     col = "magenta")
setwd("D:\\vk\\R\\graphs")
dev.off()





  
  png("histogram2.jpeg")
  
  hist(airquality$Temp)
  h=hist(airquality$Temp)
  
  
  text(h$mids,h$counts,labels=h$count,adj=c(0.5,-0.5))
  dev.off()