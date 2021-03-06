data1 <- read.table("F:/coursera/household_power_consumption.txt",header =TRUE,sep =";",na.string ="?")
data2 <- subset(data1, Date =="1/2/2007" | Date =="2/2/2007")
data2$DateTime <-paste(data2$Date, data2$Time)
data2$DateTime <- strptime(data2$DateTime, "%d/%m/%Y %H:%M:%S")
plot(data2$DateTime,data2$Global_active_power,type ="l",ylab ="Global Active Power(kilowatts")
dev.copy(png,file="plot2.png",height=480, width=480)
dev.off()