x <- strptime("01 Feb 2007 00:00:00","%d %b %Y %H:%M:%S")
y <- strptime("16 Dec 2006 17:24:00", "%d %b %Y %H:%M:%S")
(x-y)*24*60
read.table("household_power_consumption.txt", header=TRUE, skip=66636, nrows=1)
z <- strptime("02 Feb 2007 23:59:00","%d %b %Y %H:%M:%S")
(z-x)*24*60
66636+2879
read.table("household_power_consumption.txt", skip=69516, nrows=1)
myhpctable <- read.table("household_power_consumption.txt", header=FALSE, sep=";", skip=66636, nrows=2880)
myhpctable2 <- as.data.frame(myhpctable)
names(myhpctable2) <- LETTERS[1:9]
png(file="plot4.png", width=480, height=480, units="px")
par(mfrow=c(2,2))
plot(myhpctable2$C, type="l", ylab="Global Active Power", xlab="", xaxt="n")
plot(myhpctable2$E, type="l", ylab="Voltage", xlab="datetime", xaxt="n")
Sub_metering_1 <- myhpctable2$G
Sub_metering_2 <- myhpctable2$H
Sub_metering_3 <- myhpctable2$I
plot(Sub_metering_1, type="l", col="black", xlab="", xaxt="n", ylab="Energy sub metering", ylim=c(0, 40))
par(new=TRUE)
plot(Sub_metering_2, type="l", col="red", xlab="", xaxt="n", ylab="Energy sub metering", ylim=c(0, 40))
par(new=TRUE)
plot(Sub_metering_3, type="l", col="blue", xlab="", xaxt="n", ylab="Energy sub metering", ylim=c(0, 40))
plot(myhpctable2$D, type="l", ylab="Global_reactive_power", xlab="datetime", xaxt="n")
dev.off()