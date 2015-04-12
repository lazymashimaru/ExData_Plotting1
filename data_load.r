#set working directory 
setwd("~/ExData_Plotting1")
#reading the raw data
raw_data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = c("character", "character", rep("numeric",7)),na = "?")
#getting only the needed data
final_data <- raw_data[raw_data$Date == "1/2/2007" | raw_data$Date == "2/2/2007",]
#changing the class of Date and Time appropriately
temp_data <- paste(final_data$Date,final_data$Time)
final_data$DateTime <- strptime(temp_data, "%d/%m/%Y %H:%M:%S")
rownames(final_data) <- 1:nrow(final_data)
