source("loaddata.R")

with(data.selected, plot(Time, Global_active_power, 
                         type="l",
                         xlab="",
                         ylab="Global Active Power (in kilowatts)",
                         cex.lab=0.7, cex.axis=0.8))

# save the output to plot2.png
dev.copy(png,'plot2.png',  width = 480, height = 480)
dev.off()
