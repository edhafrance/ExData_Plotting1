library("dplyr")
setwd("/Users/edwardha/Documents/COURSERA/REPRODUCIBLE RESEARCH")
png(filename = "plot3.png", width = 480, height = 480)

DATA<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE, na.strings="?")
Global_active_power<-as.numeric(DATA$Global_active_power)
DATA$NewDate<-as.POSIXct(paste(DATA$Date,DATA$Time), format="%d/%m/%Y %H:%M:%S") 


#PLOT3
DATA3<-subset(DATA,Date=='1/2/2007'|Date=='2/2/2007')
plot(DATA3$NewDate,DATA3$Global_active_power, type="n",main="",xlab="",ylab="Energy sub metering",ylim=c(0,38)) 
lines(DATA3$NewDate, DATA3$Sub_metering_1) 
lines(DATA3$NewDate, DATA3$Sub_metering_2,col="red") 
lines(DATA3$NewDate, DATA3$Sub_metering_3,col="blue") 
legend("topright" ,pch=1, cex=0.3, c("Sub_metering_1, Sub_metering_2,Sub_metering_3"))

dev.off()

