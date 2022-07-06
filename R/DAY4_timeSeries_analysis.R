#time series analysis

str(AirPassengers)
AP= AirPassengers
str(AP)
#freq =12 because data collected for every month for every year
#starting from 1949 jan
ts(AP,frequency = 12,start = c(1949,1))
png("TimeSeries.jpeg")
plot(AP,ylab="no of ticket booked ",xlab="year")
dev.off()


#decompositon of data
decomAP=decompose(AP)
attributes(decomAP)
png("Season & Trend in AP values.jpeg")
plot(decomAP$figure,ylab = "seasonality",xlab = "months", type = 'b',col='blue')
plot(decomAP)
dev.off()
