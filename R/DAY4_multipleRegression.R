#multiple linear regression

attach(mtcars)
str(mtcars)

mlr=lm(mtcars$mpg~mtcars$cyl+mtcars$wt)
summary(mlr)
z=data.frame(cy1=8,wt=5.55)

predict(mlr,z)

