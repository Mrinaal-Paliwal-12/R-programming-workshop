data <- data.frame(
  gender = c("M","M","F","M","F","F"),
  age = c(47,59,21,32,33,24),
  income = c(55000,88000,32450,76500,123000,45650)
)

head(data)
str(data)

data$gender = as.factor(data$gender)
# age25 <- split(data , f = list(data$gender , data$age>25))
age25 <- subset(data , data$age < 25)

mean_income <- tapply(age25$income, age25$gender, mean,simplify = FALSE)
mean_income$F
mean_income$M

lage25 <- subset(data , data$age > 25)
mean_income <- tapply(lage25$income, lage25$gender, mean,simplify = FALSE)
mean_income$F
mean_income$M

scan("score.txt" , what="")
name = readline(prompt = "Enter Name:")
print("Hello world")
cat(name)
library(barplot3d)
install.packages("barplot3d")
barplot3d(rows=2,cols=3,z=1:6,theta=30,phi=50,topcolors=rainbow(6),sidecolors=rainbow(6),
          gridlines = FALSE,zlabels=FALSE)
