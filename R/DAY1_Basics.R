#get current working directory
getwd()
#set current working directory using command
setwd("D:\\vk\\R")

# set current working directory using session--> set working dir menu option
#trick for multiline comment 
# R programming does not support multiline comment
if(FALSE){
  "this is multiline comment"
  "i hope this works"
}
#end of multiline comment 

#library(xlsx)
library(csv)

#use of (var_name<-value) and value -> var_name operations for assigning
#numeric datatype
x=10
class(x)
typeof(x)

#integer datatype requires 'L'
y=10L
class(y)
typeof(y)

#double
x<-10.5
class(x)
#character 'a' 'abcd'
x="abcd"
typeof(x)

#logical datatype true false
x=TRUE
class(x)

#complex type

x=-10+5i
y=5+0i
z=x+y
z
class(z)


#raw type
x=as.raw("vaibhav")
x
class(x)


name="Kumar"
#output functions in R
print(name)
print(paste("hello, ",name))
cat("hello",name)
paste("welcome",name)
paste0("welcome",name)
sprintf("name is %s",name)



#accepting user input from console
{
email=readline(prompt = "Enter your email : ");
password=readline(prompt = "Enter your password : ");
print(paste("WELCOME,",email,password))
}

#scan()
name=scan(what = double())













