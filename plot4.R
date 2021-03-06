#Read information into R
data <- read.table(file="household_power_consumption.txt",sep=";",dec=".",na.strings="?",skip=66637,nrow=2880, 
                   header= TRUE, col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
tm<-strptime(paste(data[,1],data[,2]),"%d/%m/%Y %H:%M:%S")
#Open graphics export
png(filename="plot4.png", height=480, width=480, bg="transparent")
par(mfrow=c(2,2),mar=c(5,4,4,2), bg=NA)
plot(tm,data[,3], type="l", ylab="Global Active Power", xlab="")
plot(tm,data[,5], type="l", ylab="Voltage", xlab="tm")
plot(tm,data[,7], type="l", ylab="Energy sub metering", xlab="")
lines(tm,data[,8], type="l", col="red")
lines(tm,data[,9], type="l", col="blue")
legend("topright", legend=names(data[7:9]), lty=1, col=c("black","red","blue"), bty="n", bg="transparent")
plot(tm,data[,4], type="l", xlab="tm")
#Close graphics export
dev.off()