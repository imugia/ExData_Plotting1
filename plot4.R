data <- read.table(file="household_power_consumption.txt", header=TRUE, sep=";")
data1 <- subset(data, (as.Date(data$Date,format='%d/%m/%Y') >= "2007-02-01") & (as.Date(data$Date,format='%d/%m/%Y') <= "2007-02-02"))

par(mfrow = c(2, 2))

plot(as.numeric(as.character(data1$Global_active_power)),type="l",ylab="Global Active Power", xaxt='n',xlab="")
axis(1,c(0,length(data1$Global_active_power)/2,length(data1$Global_active_power)),c("Thu","Fri","Sat"))

plot(as.numeric(as.character(data1$Voltage)),type="l",ylab="Voltage", xaxt='n',xlab="datetime")
axis(1,c(0,length(data1$Global_active_power)/2,length(data1$Global_active_power)),c("Thu","Fri","Sat"))

plot(as.numeric(as.character(handle$Sub_metering_1)),type="l",xaxt='n',yaxt='n',xlab="",ylab="Energy sub metering")
lines(as.numeric(as.character(handle$Sub_metering_2)), type="l",col="red")
lines(handle$Sub_metering_3, type="l",col="blue")
axis(1,c(0,length(handle$Sub_metering_1)/2,length(handle$Sub_metering_1)),c("Thu","Fri","Sat"))
axis(side=2,at=seq(0,30,by=10))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))

plot(as.numeric(as.character(data1$Global_reactive_power)),type="l",ylab="Global_reactive_power", xaxt='n',xlab="datetime")
axis(1,c(0,length(data1$Global_active_power)/2,length(data1$Global_active_power)),c("Thu","Fri","Sat"))

dev.copy(png,file="plot4.png")
dev.off()