
#PIE CHART
exportStats= c(40,23,60,55,5)
countries=c("india","usa","china","russia","UK")
percent=round((100*exportStats)/sum(exportStats),2)
#creating and saving file in given directory
png("piegraph.jpeg")
pie(exportStats,main="country wise export in millions",labels=percent,cex=1.0,col=rainbow(length(exportStats)))
legend("topright",legend = countries,cex=0.8,fill = rainbow(length(exportStats)))
#saving the file
dev.off()

setwd("D:\\vk\\R\\graphs")
getwd()





  #3D PIE CHART
  library(plotrix)
  exportStats= c(40,23,60,55,5)
  countries=c("india","usa","china","russia","UK")
  percent=round((100*exportStats)/sum(exportStats),2)
  #creating and saving file in given directory
  png("3Dpiegraph.jpeg")
  
  #pie(exportStats,main="country wise export in millions",labels=percent,cex=1.0,col=rainbow(length(exportStats)))
  pie3D(exportStats,main="country wise export in millions",explode = 0.2,labels=percent,cex=1.0,col=rainbow(length(exportStats)))
  
  legend("topright",legend = countries,cex=0.8,fill = rainbow(length(exportStats)))
  #saving the file
  dev.off()
  
  setwd("D:\\vk\\R\\graphs")
  getwd()
  
  
  
  