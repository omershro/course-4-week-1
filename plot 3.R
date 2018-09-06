plot(file$Date_Time,type="n",file$Sub_metering_1,xlab="",ylab="Energy sub metering")
points(file$Date_Time,file$Sub_metering_1,type="l",col="black")
points(file$Date_Time,file$Sub_metering_2,type="l",col="red")
points(file$Date_Time,file$Sub_metering_3,type="l",col="blue")
legend("topright",lwd=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,"plot3.png",height=480,width=480)

dev.off()
