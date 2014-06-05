data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
data[,1] <- as.Date(data[,1], "%d/%m/%Y")
data <- data[data$Date == "2007-02-01" | data$Date == "2007-02-02", ]
data[,3] <- as.numeric(as.character(data[,3]))
data[,2] <- as.POSIXct(paste(data[,1], data[,2], sep=" "))
png(filename="plot2.png", width=480, height=480, units="px")
plot(data[,2], data[,3],xlab="", ylab="Global Active Power (kilowatts)" ,type="n")
lines(data[,2], data[,3], type="l")
dev.off()