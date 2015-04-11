#initialize data
source("data_load.r")
#initialize graphics device
png(filename = "plot1.png",width = 480, height = 480, units = "px", pointsize = 12,bg = "white")
#plot
hist(final_data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
#turn graphics off
dev.off()