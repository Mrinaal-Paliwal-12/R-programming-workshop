library(RJSONIO)

# from json data in jason format only
jasonEmpData = fromJSON("D:\\vk\\R\\jsondata.json") 
jasonEmpData

#convert json data into dataframe before reading 
jsonEmpData = as.data.frame(jasonEmpData)
jsonEmpData

employeedata
employeedataL = as.list(employeedata)

list1 = list(1001,"Laadu","MCA","2000",123456)
list2 = list(1003,"Laadu","MCA","2000",123456)
list3 = list(1004,"Laadu","MCA","2000",123456)
list4 = list(1002,"Laadu","MCA","2000",123456)