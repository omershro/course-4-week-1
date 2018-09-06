plot(file$Global_active_power~file$Date_Time,type="l",xlab="",ylab="Global Active Power (killowatts)")

dev.copy(png,"plot2.png",height=480,width=480)

dev.off()
