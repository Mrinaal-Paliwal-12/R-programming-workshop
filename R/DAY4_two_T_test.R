data

#box plot for two sample / two side t test
png("LungCap-Smoke.jpeg")
boxplot(data$LungCap~data$Smoke)
dev.off()

#H0 = mean lungCap(smokers) = mean lungCap of nonSmokers
twoSampleTtest = t.test(data$LungCap~data$Smoke,mu=0,alternative="two.sided",confint=0.95)
twoSampleTtest = t.test(data$LungCap~data$Smoke)
#two sample test is default in t.test() even all paramters are default

attributes(twoSampleTtest)

