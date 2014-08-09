par(mfrow=c(2,2))
#1
plot(x$DTime, x$GAP, type="l", xlab="", ylab="Global Active Power")
#2
plot(x$DTime, x$KW, type="l", xlab="datetime", ylab="Voltage")
#3
with(x, plot(DTime, Sub1, type="n", xlab= "", ylab="Energy sub metering"))
with(x, lines (DTime, Sub1, type="l"))
with(x, lines(DTime, Sub2, type="l", col="red"))
with(x, lines(DTime, Sub3, type="l", col="blue"))
legend("topright", lty=c(1,1), col=c("black", "red", "blue"), legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=.8, bty="n")
#4
plot(x$DTime, x$GRP, type="l", xlab="datetime", ylab="Global_reactive_power")