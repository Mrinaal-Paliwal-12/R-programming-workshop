#logistic regression
mydata = binary
mydata$admit=as.factor(mydata$admit)
mydata$rank=as.factor(mydata$rank)
xtabs(~mydata$admit+mydata$rank)

#partition the data into train and test data sets
set.seed(1234)

ind= sample(2,nrow(binary),replace = T,prob = c(0.8,0.2))
mydata
#train data model
train = mydata[ind==1,]
#test data model
test=mydata[ind==2,]
#logistic regression model
mymodel=glm(admit~gpa+gre+rank,data = train,family = 'binomial')
summary(mymodel)

#predict the values based on trained data set
p1=predict(mymodel,train,type = 'response')
head(p1)
