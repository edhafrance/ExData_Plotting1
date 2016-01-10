library("dplyr")
setwd("/Users/edwardha/Documents/COURSERA/REPRODUCIBLE RESEARCH")
png(filename = "plot2.png", width = 480, height = 480)

DATA<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE, na.strings="?")
Global_active_power<-as.numeric(DATA$Global_active_power)
DATA$NewDate<-as.POSIXct(paste(DATA$Date,DATA$Time), format="%d/%m/%Y %H:%M:%S") 


#PLOT2
DATA2<-subset(DATA,Date=='1/2/2007'|Date=='2/2/2007')
plot(DATA2$NewDate,DATA2$Global_active_power, type="n",main="",xlab="",ylab="Global Active Power (kilowatts)") 
lines(DATA2$NewDate, DATA2$Global_active_power) 

dev.off()