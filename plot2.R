data <- read.table(file="household_power_consumption.txt", header=TRUE, sep=";")
data1 <- subset(data, (as.Date(data$Date,format='%d/%m/%Y') >= "2007-02-01") & (as.Date(data$Date,format='%d/%m/%Y') <= "2007-02-02"))
plot(as.numeric(as.character(data1$Global_active_power)),type="l",ylab="Global_active_power(Kilomatts)", xaxt='n',xlab="")
axis(1,c(0,length(data1$Global_active_power)/2,length(data1$Global_active_power)),c("Thu","Fri","Sat"))
dev.copy(png,file="plot2.png")
dev.off()

