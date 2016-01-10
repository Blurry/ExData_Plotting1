# Sys.setlocale("LC_TIME","C") #Get weekdays in English in RStudio

require(dplyr) || install.packages("dplyr")
library(dplyr)

# Load data set
data<- read.table("./data/household_power_consumption.txt", header = TRUE,
                   sep = ";",
                   na.strings = "?")
# Load only for 2007-02-01 and 2007-02-01
data <- filter(power, Date == "1/2/2007" | Date == "2/2/2007")

# Convert Date and Time 
data <- transform(power, dateAndTime = 
                     strptime(paste(as.Date(Date,"%d/%m/%Y"),
                                    Time),"%Y-%m-%d %H:%M:%S"))
