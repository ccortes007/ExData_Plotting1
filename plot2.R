tabhead <- read.table("household_power_consumption.txt", head = TRUE, sep = ";", nrows = 1)
tabhead <- colnames(tabhead)
tab <- read.table("household_power_consumption.txt", head = TRUE, sep = ";", col.names = tabhead, skip = 66636, nrows = 2880)
tab$DateTime = strptime(paste(as.Date(tab$Date, "%d/%m/%Y"), tab$Time), format = "%Y-%m-%d %H:%M:%S") 

png(file = "plot2.png")
plot(tab$DateTime, tab$Global_active_power, type="l" , xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
