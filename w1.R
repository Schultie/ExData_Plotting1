#setwd("C:/Users/Asus-Martijn/Predicting/Coursera/Exploratory Data Analysis/")

data=read.table("C:/Users/Asus-Martijn/Predicting/Coursera/Exploratory Data Analysis/hpc.txt",sep=";",header=T,na.strings="?")
data$Date=as.Date(data$Date,format="%d/%m/%Y")
new_data=subset(data,(data$Date=="2007-02-01"|data$Date=="2007-02-02"))
rm(data)
new_data$DateTime=strptime(paste(new_data$Date,new_data$Time),format="%Y-%m-%d %H:%M:%S")

hist(new_data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global_active_power")
plot(new_data$DateTime,new_data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")


plot(new_data$DateTime,new_data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(new_data$DateTime,new_data$Sub_metering_2,col="red")
lines(new_data$DateTime,new_data$Sub_metering_3,col="blue")
legend("topright",pch=("-"),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))



par(mfrow=c(2,2))

plot(new_data$DateTime,new_data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
plot(new_data$DateTime,new_data$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(new_data$DateTime,new_data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(new_data$DateTime,new_data$Sub_metering_2,col="red")
lines(new_data$DateTime,new_data$Sub_metering_3,col="blue")
legend("topright",pch=("-"),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(new_data$DateTime,new_data$Global_reactive_power,type="l",xlab="datetime",ylab="Global reActive Power (kilowatts)")





