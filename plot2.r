#initialize data
source("data_load.r")
#initialize graphics device
png(filename = "plot2.png",width = 480, height = 480, units = "px", pointsize = 12,bg = "white")
#plot
plot(final_data$DateTime,final_data$Global_active_power,pch = ".",xlab = "",ylab="Global Active Power (kilowatts)")
#connect the dots
lines(final_data$DateTime,final_data$Global_active_power,lty = 1,lwd=1)
#turn graphics off
dev.off()