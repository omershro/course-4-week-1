### First of all, download the zip file to your working directory.

### Unzipping the file

unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip")

### Reading the data

file <- read.csv("household_power_consumption.txt",sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

### Filtering the data by dates

file <- file[file$Date =="1/2/2007" | file$Date =="2/2/2007",]

file <- file[complete.cases(file),]

###combining Date and Time variables 

file$Date <- as.Date(file$Date, "%d/%m/%Y")
Date_Time <- paste(file$Date,file$Time)
file <- cbind(Date_Time, file)
file$Date_Time <- as.POSIXct(Date_Time)
