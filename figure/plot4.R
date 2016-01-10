library("dplyr")
setwd("/Users/edwardha/Documents/COURSERA/REPRODUCIBLE RESEARCH")
png(filename = "plot4.png", width = 480, height = 480)

DATA<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE, na.strings="?")
Global_active_power<-as.numeric(DATA$Global_active_power)
DATA$NewDate<-as.POSIXct(paste(DATA$Date,DATA$Time), format="%d/%m/%Y %H:%M:%S") 


#PLOT4

DATA4<-subset(DATA,Date=='1/2/2007'|Date=='2/2/2007')

par(mfrow = c(2, 2))


plot(DATA4$NewDate,DATA4$Global_active_power, type="n",main="",xlab="",ylab="Global Active Power (kilowatts)") 
lines(DATA4$NewDate, DATA4$Global_active_power) 


plot(DATA4$NewDate,DATA4$Voltage, type="n",main="",xlab="",ylab="Voltage") 
lines(DATA4$NewDate, DATA4$Voltage) 


plot(DATA4$NewDate,DATA4$Global_active_power, type="n",main="",xlab="",ylab="Energy sub metering",ylim=c(0,38)) 
lines(DATA4$NewDate, DATA4$Sub_metering_1) 
lines(DATA4$NewDate, DATA4$Sub_metering_2,col="red") 
lines(DATA4$NewDate, DATA4$Sub_metering_3,col="blue") 
legend("topright" ,pch=1, cex=0.3, c("Sub_metering_1, Sub_metering_2,Sub_metering_3"))


plot(DATA4$NewDate,DATA4$Global_reactive_power, type="n",main="",xlab="",ylab="Voltage") 
lines(DATA4$NewDate, DATA4$Global_reactive_power) 



dev.off()

