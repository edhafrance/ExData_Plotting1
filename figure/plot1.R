library("dplyr")
setwd("/Users/edwardha/Documents/COURSERA/REPRODUCIBLE RESEARCH")

png(filename = "plot1.png", width = 480, height = 480)
DATA<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE, na.strings="?")
Global_active_power<-as.numeric(DATA$Global_active_power)
DATA$Time<-strptime(DATA$Time,"%H:%M:%S")

#PLOT1
DATA1<-subset(DATA, Date=='1/2/2007'|Date=='2/2/2007')
hist(DATA1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()


