hist(file$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.copy(png,"plot1.png",height=480,width=480)

dev.off()
