#initialize data
source("data_load.r")
#initialize graphics device
png(filename = "plot3.png",width = 480, height = 480, units = "px", pointsize = 12,bg = "white")
#plot
plot(final_data$DateTime,final_data$Sub_metering_1,pch = ".")
#connect the dots for sub_metering_1
lines(final_data$DateTime,final_data$Sub_metering_1,lty = 1, lwd = 1)
#add line for sub_metering_2
lines(final_data$DateTime,final_data$Sub_metering_2,lty = 1, lwd = 1, col = "red")
#add line for sub_metering_3
lines(final_data$DateTime,final_data$Sub_metering_3,lty = 1, lwd = 1,col = "blue")
#add legend
legend("topright", lty=1, col = c("black","red","blue"), legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#turn off graphics
dev.off()