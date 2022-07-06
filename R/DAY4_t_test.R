#t-test
#data set used

#attach(LungCapData)
#str(LungCapData)
#LungCapData$Smoke= as.factor(LungCapData$Smoke)
#LungCapData$Gender=as.factor(LungCapData$Gender)
setwd("D:\\vk\\R\\graphs")
data=read_xls(file.choose())
png("LungCapacity.jpeg")
boxplot(data$LungCap)
dev.off()

#H0 - null hypothesis mean lungcapasity is 8
oneSampleTest=t.test(data$LungCap,mu=8,alternative = "less",confint=0)
attributes(oneSampleTest)

var(data$LungCap[Smoke=="yes"])
var(data$LungCap[Smoke=="no"])




