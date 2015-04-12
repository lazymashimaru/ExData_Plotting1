#initialize data
source("data_load.r")
#initialize graphics device
png(filename = "plot4.png",width = 480, height = 480, units = "px", pointsize = 12,bg = "white")
#set the graph arrangement
par(mfrow = c(2,2))
#set reference dataset
with(final_data, {
  #plot 1st graph - Active Power
  plot(DateTime,Global_active_power, pch = ".", xlab = "",ylab="Global Active Power")
  #connect the dots
  lines(DateTime,Global_active_power)
  #plot 2nd graph - Voltage
  plot(DateTime,Voltage, pch = ".", xlab="datetime", ylab="Voltage")
  #connect the dots
  lines(DateTime,Voltage)
  #plot 3rd graph - Energy Sub Metering
  plot(DateTime,Sub_metering_1,pch = ".",ylab = "Energy sub metering", xlab = "")
  #connect the dots for sub_metering_1
  lines(DateTime,Sub_metering_1,lty = 1, lwd = 1)
  #add line for sub_metering_2
  lines(DateTime,Sub_metering_2,lty = 1, lwd = 1, col = "red")
  #add line for sub_metering_3
  lines(DateTime,Sub_metering_3,lty = 1, lwd = 1,col = "blue")
  #add legend
  legend("topright", lty=1, col = c("black","red","blue"), legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  #plot 4th graph - Reactive Power
  plot(DateTime,Global_reactive_power, pch = ".", xlab="datetime", ylab="Global_reactive_power")
  lines(DateTime,Global_reactive_power,lty=1,lwd=1)  
})
#turn off graphics
dev.off()
