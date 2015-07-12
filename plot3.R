datafile <- "./data/household_power_consumption.txt"
data <- read.table(datafile, sep = ";", header = T, na.strings = "?")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png('plot3.png', width=480, height=480)

plot(datetime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

points(datetime, data$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", 
    col = "red")

points(datetime, data$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", 
    col = "blue")

legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
    "Sub_metering_2", "Sub_metering_3"))
dev.off()