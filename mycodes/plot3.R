library(sqldf)


sqls <- paste0("select * from file where Date = '1/2/2007' or Date = '2/2/2007'")
hp_cons <- read.csv.sql("household_power_consumption.txt", sql = sqls, sep=';', header=TRUE)

plot(hp_cons$Sub_metering_1,type='l',ylab='Energy Sub Metering', xlab='', xaxt='n', cex.lab=0.9)
lines(hp_cons$Sub_metering_2, col='red')
lines(hp_cons$Sub_metering_3, col='blue')
axis(1, at=at, labels=c('Thu', 'Fri', 'Sat'))
legend(1800,39.5,col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       lty=c(1,1),text.width=955,cex=0.9)

dev.copy(png, file = 'plot3.png')
dev.off()