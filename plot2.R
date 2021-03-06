#Read information into R
plot.new()
data<-read.table("household_power_consumption.txt",header=F,na.strings="?",sep=";",nrows=2880,skip=66637)
tm<-strptime(paste(data[,1],data[,2]),"%d/%m/%Y %H:%M:%S")
#Open graphics export
png(filename="plot2.png", height=480, width=480, bg="transparent")
par(mar=c(5,4,4,2))
plot(tm,data[,3], type="l",xlab="",ylab="Global Active Power (kilowatts)")
#Close graphics export
dev.off()