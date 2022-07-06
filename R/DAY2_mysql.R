library(RMySQL)

connection = dbConnect(MySQL(),user="root",password='',dbname="employee",host="localhost")

data=dbSendQuery(connection,"select * from student")

emdRec=fetch(data,n=-1)
insert=dbSendQuery(connection,"insert into student value(4,'dibiya','db@somaiya.edu')")
dbWriteTable(connection,"table1",empdata)
create=dbSendQuery(connection,"create table stu1(id int,name varchar(30))")
