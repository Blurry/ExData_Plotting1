# Load data
source("load.R")

# Save to PNG
png("plot3.png", width = 480, height = 480)
par(mfrow = c(1,1))
with(data, plot(dateAndTime,Sub_metering_1, type = "n", 
     ylab ="Energy sub metering", xlab=""))
with(data, lines(dateAndTime,Sub_metering_1, col = "black"))
with(data, lines(dateAndTime,Sub_metering_2, col = "red"))
with(data, lines(dateAndTime,Sub_metering_3, col = "blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = 1, cex= 0.8, x.intersp=1, adj = 0.1)

dev.off()
