# source loaddata file
source("loaddata.R")

with(data.selected, hist(Global_active_power, col="red", 
                         breaks=15,
                         xlab="Global Active Power (kilowatts)",
                         main="Global Active Power",
                         ylim=c(0,1200)))

dev.copy(png,'plot1.png',  width = 480, height = 480)
dev.off()
