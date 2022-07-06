#chi square test

data$Smoke=as.factor(data$Smoke)
data$Gender=as.factor(data$Gender)

str(data)

contingencyTable=table(data$Gender,data$Smoke)
png("GenderWIse smoker stats.jpeg")
barplot(contingencyTable,beside=T,legend=T)
dev.off()



chisq.test(contingencyTable)
