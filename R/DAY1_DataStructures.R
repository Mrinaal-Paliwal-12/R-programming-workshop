#functions in R
#built in and user defined


#user-Defined functions
f<-function(){
  print(paste("Normal ....f function called...."))
}
f
#passing parameters to the func
f<-function(a,b){
  print(paste("user passed a:",a,"b:",b))
  return(a+b);
}
x=f(5,6)
x

#passing default parameters to the func
f<-function(a,b,c=69){
  print(paste("user passed a:",a,"b:",b,"c:",c))
  return(a+b+c);
}
x=f(5,6)
x





#data structures in R
#1.vectors
#2.list
#3.arrays
#4.matrix
#5.data frames

#1.R is obssessed with vectors
#1.1 automic vectors
#1.2 created with seq() or c()

#automic vectors
vector1 = c(TRUE,FALSE,TRUE,FALSE,FALSE)
vector1
class(vector1)


vector1 = c(1,2,3)
vector1
class(vector1)

vector1 = c("HELOO")
vector1
class(vector1)



vectorAA = c("vaibhav"<=23,"kumar"<=69)
vectorAA
class(vectorAA)

vectorA =seq(1:10)
vectorA

vectorA = seq(1,10,by=2)
vectorA

vectorA = seq(10,100,length.out=7)

vectorB = seq(20,200,length.out=7)

vectorC = vectorA+vectorB
vectorC


a=c(2,3,4,6)
b=c(6,7,5,3)
d=a+b
s=c("a","b","c")
e=c(a,b,s)
e



vectorL=c(TRUE,FALSE,TRUE,FALSE,TRUE,TRUE)
vectorNames= c()
class(vectorL)
vectorAA = c("vaibhav" , "kumar", "Somaiya ","IOT","hello!" )
vectorAA[vectorL]




#LIST

list1= list(c(1,2,3),"MCA",c("vk","sk"),69)
list1


x=c(11,22,32)
y=c("vk","sk","mca","shirley")
list1=list(x,y,c(11.23,23.21,452.4))
list1[[4]]=c(2,3,4) #appending values at the end of list using index
list1[[4]]=NULL # deleting list elements at end of list 
list1


list1[[1]] #returning values in vector
list1[1] #returning first vector as list item

#iterating through list using for loop
#here for loop works like foreach in other languages 
for(i in list1)
  print(i)

#for loop in vector
for(i in y)
  print(y)







list1=list(x,y,c(11.23,23.21,452.4))
x1=list(101,"vk",c(24,69,23))
x2=list(102,"sk",c(44,39,63))
list2=list(x1,x2)


length(list1)#count the last index




#passing names to list index elements
names(list1)=c("rollno","names","marks")




#ARRAYS
#array(data,dim=c(row,col,matrix))
array1=array(c(11,22,33,44),dim = c(2,2))
array1=array(c(11,22,33,44,55,66,77),dim = c(3,3,2),dimnames = list(row_names,col_names,matrix_names))


row_names=c("students1","students2","students3")
col_names=c("sub1","sub2","sub3")
matrix_names=c("div1","div2")


for(i in array1)
  print(i)

array1[,,1]#matrix1
array1[1,2,1]#row,col,matrix 

#apply(data,1 for row,2 for col,sum)
apply(array1[,,1],1,sum)
apply(array1[,,1],2,sum)

mysum<-function(element)
{
  element=element+5
}
apply(array1[,,1],2,mysum)







#factors 
course = c("mca","mba","bca","bsc","Engg","BBA")
class(course)

course=factor(course,levels=c("mba","mca","bsc"))
is.factor(course)