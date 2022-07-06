#Bar Graph
png("Bar_graph.jpeg")
exportStats= c(40,23,60,55,5)
countries=c("india","usa","china","russia","UK")
barplot(exportStats,names.arg = countries,horiz = TRUE,xlab="countries",ylab="export in millions",
        main = "barplot - country wise export in millions",col = rainbow(length(exportStats)))
legend("topright",legend = countries,cex=0.8,fill = rainbow(length(exportStats)))


dev.off()





#Multiple Bar Graph
png("MultiBar_graph.jpeg")
exportStats= matrix(c(40,23,60,55,95,54,34,23,75,32,23,56,43,69,61),nrow=3,ncol=5,byrow = TRUE)
countries=c("india","usa","china","russia","UK")
sectors=c("defense","Toys","FMCG")
barplot(exportStats,names.arg = countries,xlab="countries",ylab="export in millions",
        main = "barplot - country wise export in millions",col = rainbow(length(exportStats)))
legend("topleft",legend = sectors,cex=0.8,fill = rainbow(length(exportStats)))


dev.off()