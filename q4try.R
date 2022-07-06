# age          Preference           
# 25down(30)    milk(22)
# 25up(20)      fresh juice(3) 
#               tea/coffee(25)

x = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
y = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
       0,0,0,
       2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2)
data <- data.frame(
  age = c(sample(x)),
  preference = c(sample(y))
)
head(data)
summary(data)
nrow(data)
data$age = as.factor(data$age)
data$preference = as.factor(data$preference)

set.seed(1234)
df = sample(2,nrow(data),replace =T, prob = c(0.8,0.2))
df

train = data[df==1,]
test = data[df==2,]
train
test

model = glm(train$age~train$preference, data = train, family = "binomial")
summary(model)

pred = predict(model,train,type= 'response')
head(pred)

model = glm(test$age~test$preference, data = test, family = "binomial")
summary(mymodel)

p2 = predict(model,test,type= 'response')
head(p2)

