# Load data
source("load.R")

# Save to PNG
png("plot2.png", width = 480, height = 480)
par(mfrow = c(1,1))
with(data, plot(dateAndTime,Global_active_power, 
     xlab ="", ylab ="Gloabal Active Data (kilowatts)", type = "l"))

dev.off()