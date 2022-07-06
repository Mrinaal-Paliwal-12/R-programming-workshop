table <- read.table("Score.txt")
table
png("AAbarPlot1.jpeg")
barplot(table$Round1,xlab = "Players" , ylab = "Round1 performance",
        main = "Round 1 comparison of players",
        col = rainbow(length(table$Round1))
)
# legend("topright",legend=table$Round1,cex=0.8,fill = rainbow(length(table$Round1)))
dev.off()
# plot(table$Round1,table$Round2)
head(table)
data <- table
# round1 and round3

x <- data[,1]
y <- data[,3]
reg1 <- lm(y~x)
summary(reg1)
anova(reg1)
hist(residuals(reg1))
confint(reg1)
predict(reg1)

x <- data[,2]
y <- data[,3]
reg1 <- lm(y~x)
summary(reg1)
anova(reg1)
hist(residuals(reg1))
confint(reg1)
predict(reg1)

x <- as.matrix(data[-3])
y <- data[,3]
reg1 <- lm(y~x)
summary(reg1)
anova(reg1)
hist(residuals(reg1))
confint(reg1)
predict