datafile <- "./data/household_power_consumption.txt"
data <- read.table(datafile, sep = ";", header = T, na.strings = "?")

data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png('plot1.png', width=480, height=480)
hist(data$Global_active_power, col = "red",ylab = "Frequency", 
   xlab = "Global Active Power (kilowatts)", main = "Global Active Power",
   xlim = c(0, 6), ylim = c(0, 1200), xaxp = c(0, 6, 3))

dev.off()
