#Read information into R
plot.new()
data<-read.table("household_power_consumption.txt",header=F,na.strings="?",sep=";",nrows=2880,skip=66637)
#Open graphics export
png(filename="plot1.png", height=480, width=480, bg="transparent")
hist(data[,3],xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")
#Close graphics export
dev.off()