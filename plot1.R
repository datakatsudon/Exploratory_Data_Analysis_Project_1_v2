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
png(file="plot1.png", width=480, height=480, units="px")
hist(myhpctable2$C, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
