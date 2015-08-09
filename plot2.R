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
png(file="plot2.png", width=480, height=480, units="px")
plot(myhpctable2$C, type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt="n")
dev.off()
##myhpctable3 <- myhpctable2
##myhpctable3$A <- weekdays(as.Date(myhpctable3$A))
##axis(1, at="Thu", "Fri", "Sat", labels=FALSE)
##axis.POSIXct(1, at=seq(as.Date("Thu")), labels=FALSE)
##axis.Date(side=1, weekdays)