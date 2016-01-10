# Load data
source("load.R")

# Save to PNG
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

with(power, plot(power$dateAndTime,power$Global_active_power, 
     xlab ="", ylab ="Gloabal Active Data", type = "l"))

with(power, plot(power$dateAndTime,power$Voltage, xlab = "datetime", 
     ylab ="Voltage", type="l"))

with(power, plot(power$dateAndTime,power$Sub_metering_1, type = "n", 
     ylab ="Energy sub metering", xlab=""))
with(power, lines(power$dateAndTime,power$Sub_metering_1, col = "black"))
with(power, lines(power$dateAndTime,power$Sub_metering_2, col = "red"))
with(power, lines(power$dateAndTime,power$Sub_metering_3, col = "blue"))


with(power, plot(power$dateAndTime,power$Global_reactive_power, xlab = "datetime", 
     ylab ="Gloab_reactive_power", type="l"))


legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = 1, cex= 0.6, y.intersp=0.4, bty="n", inset = c(0.1,-0.1))

dev.off()