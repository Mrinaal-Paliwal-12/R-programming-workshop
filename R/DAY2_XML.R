library(XML)

data = xmlParse("D:\\vk\\R\\data.xml")

xml2dataFrame = xmlToDataFrame(data)
