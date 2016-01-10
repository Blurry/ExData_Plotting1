# Load data
source("load.R")

# Save to PNG
png("plot1.png", width = 480, height = 480)
par(mfrow = c(1,1))
with(data, hist(Global_active_power, xlab ="Global Active Power (kilowatts)", 
     main ="Global Active Power", col = "red"))

dev.off()


