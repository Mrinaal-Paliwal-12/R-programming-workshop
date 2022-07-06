#data frames in R

empdata=data.frame(
  empid=c(101,102,103,104,105),
  empname=c("vk","sk","shirley","dvd","priya"),
  empdept=c(".net","jjava","python","AI","ML"),
  empcity=c("mumbai","kalyan","latur","dubai","bhandup"),
  empsal=c(20000,2344234,234234,24234,42424),
  empdoj=c("2012-02-10","2012-03-15","2019-09-20","2018-01-19","1999-1-23"),
  stringsAsFactors = FALSE
)
#checking weather empdata is dataframe
is.data.frame(empdata)

#structure of data frame
str(empdata)



summary(empdata)

#accesing col of data frame
empdata$empname

df=data.frame(empdata$empid,empdata$empname)
df



  empdata1=data.frame(
    empid=c(201,202,203,204,205),
    empname=c("ad","adf","gfd","fhg","afg"),
    empdept=c("blackbox","testing","xampp","c#","ML"),
    empcity=c("mumbai","kalyan","latur","dubai","bhandup"),
    empsal=c(205000,234234,67834,696969,6954345),
    empdoj=c("1999-02-10","2062-03-15","2019-09-20","2018-01-19","1999-1-23"),
    stringsAsFactors = FALSE
  )
  
  #output of rbind() and cbind() will not be accessible if not stored
  employeedata=rbind(empdata,empdata1)
  
  #appending a rec in data frame
  rec=list(206,"vaibhav","human testing","powai",234353,"1999-07-10")
  empdata=rbind(empdata,rec)
  
  #adding coloumn in data frame
  gender=c("M","M","F","M","F","M")
  empdata=cbind(empdata,gender)
  
  
  
  
  #SUBSET
  #use of subset functions for dataframe record acess/filters
  subset(empdata,empcity=="mumbai")
  
  subset(empdata,empsal==max(empdata$empsal))
  subset(empdata,empsal==min(empdata$empsal))
  
  
  
  
  #check employees joined after 2015 jan 01
  subset(empdata,as.Date(empdoj)>as.Date("2015-01-01"))
  
  subset(empdata,gender=="F")
  
  subset(empdata,(empsal>=50000)&(empsal>60000))
  
  
  
  
  