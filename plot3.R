source("loaddata.R")

plot(data.selected$Time, data.selected$Sub_metering_1, 
     type="l", ylab="Energy sub metering", xlab = "", cex.lab=0.7)

# add other submeterings as separate lines
lines(data.selected$Time, data.selected$Sub_metering_2, col="red")
lines(data.selected$Time, data.selected$Sub_metering_3, col="blue")

# annotate the graph with a legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), col=c("black","red", "blue"), cex=0.8)

dev.copy(png,'plot3.png',  width = 480, height = 480)
dev.off()