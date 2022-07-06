employeedata
empdata

data=read.csv("D:\\vk\\R\\data.csv")

is.data.frame(data)

data= read.csv(file.choose())

getwd()
setwd("D:\\vk\\R")
write.csv()
write.csv(employeedata,"employee.csv")



empdata3=data.frame(
  empid=c(101,102,103,104,105),
  empname=c("vk","sk","shirley","dvd","priya"),
  empdept=c(".net","jjava","python","AI","ML"),
  empcity=c("mumbai","kalyan","latur","dubai","bhandup"),
  empsal=c(20000,2344234,234234,24234,42424),
  empdoj=c("2012-02-10","2012-03-15","2019-09-20","2018-01-19","1999-1-23"),
  #gender=c("M","M","F","M","F"),
  stringsAsFactors = FALSE
)


write.table(empdata3,"employee.csv",append = TRUE,sep = ",",col.names = FALSE)
