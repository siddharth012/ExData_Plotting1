data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
data[,1] <- as.Date(data[,1], "%d/%m/%Y")
data <- data[data$Date == "2007-02-01" | data$Date == "2007-02-02", ]
data[,3] <- as.numeric(as.character(data[,3]))
png(filename="plot1.png", width=480, height=480, units="px")
hist(data[,3],col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()