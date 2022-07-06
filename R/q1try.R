x = sample(1:25,size=12)

y = sample(x) 

x3 = c('All numbers divisible by 3 in X are:')
inc = 1
  
for(i in x){
  if(i%%3==0){
    inc = inc + 1
    x3[[inc]] = i
  }
}
for(i in x3)
  print(i)

dbl <-function(){
return(2*(x+y))
}

z = dbl()

minX = which(x==min(x))
minY = which(y==min(y))
maxX = which(x==max(x))
maxY = which(y==max(y))
j = 0

x<-matrix(x,nrow=4,ncol=3)
x

more6 = which(x[,2]>6)
mat6 = c()
inc = 0
for(i in more6){
  for(j in 1:ncol(x)){
    inc = inc + 1
    print(x[i,j])
    mat6[inc] = x[i,j]
  }
}
mat6<-matrix(mat6,ncol=ncol(x),byrow=TRUE)
x
mat6

x = rbind(x,c(10,11,12))
x
# x = rbind(x,colMeans(x))
# x
apply(x,1,mean)
apply(x,2,mean)

x = cbind(c(1,1,1,1,1),x)
x = rbind(x,c(7,NA,21,13))
x = rbind(x,c(9,NA,16,4))
x
mean(x[,2],na.rm=TRUE)
pmin(x,y)
pmax(x,y)
