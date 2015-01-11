setwd("C:/Users/Asus-Martijn/Predicting/Coursera/Exploratory Data Analysis/")
Sys.setlocale("LC_TIME", "English")

data=read.table("C:/Users/Asus-Martijn/Predicting/Coursera/Exploratory Data Analysis/hpc.txt",sep=";",header=T,na.strings="?")
data$Date=as.Date(data$Date,format="%d/%m/%Y")
new_data=subset(data,(data$Date=="2007-02-01"|data$Date=="2007-02-02"))
rm(data)
new_data$DateTime=strptime(paste(new_data$Date,new_data$Time),format="%Y-%m-%d %H:%M:%S")

png(file="plot2.png")
plot(new_data$DateTime,new_data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()