library(zoo)
library(xts)
library(sqldf)


sqls <- paste0("select * from file where Date = '1/2/2007' or Date = '2/2/2007'")
hp_cons <- read.csv.sql("household_power_consumption.txt", sql = sqls, sep=';', header=TRUE)



hist(hp_cons$Global_active_power,col='red',main='Global Active Power', xlab='Global Active Power (kilowatts)')

plot(hp_cons$Global_active_power,type='l',ylab='Global Active Power (kilowatts)', xlab='', xaxt='n')
at <- seq(0, 2880, by=1440)
axis(1, at=at, labels=c('Thu', 'Fri', 'Sat'))

plot(hp_cons$Sub_metering_1,type='l',ylab='Energy Sub Metering', xlab='', xaxt='n')
lines(hp_cons$Sub_metering_2, col='red')
lines(hp_cons$Sub_metering_3, col='blue')
axis(1, at=at, labels=c('Thu', 'Fri', 'Sat'))
legend('topright',col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=c(1,1))

par(mfcol = c(2,2), mar = c(4,8,2,1))

plot(hp_cons$Global_active_power,type='l',ylab='Global Active Power (kilowatts)', xlab='', xaxt='n')
at <- seq(0, 2880, by=1440)
axis(1, at=at, labels=c('Thu', 'Fri', 'Sat'))

plot(hp_cons$Sub_metering_1,type='l',ylab='Energy Sub Metering', xlab='', xaxt='n')
lines(hp_cons$Sub_metering_2, col='red')
lines(hp_cons$Sub_metering_3, col='blue')
axis(1, at=at, labels=c('Thu', 'Fri', 'Sat'))
legend('topright',col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=c(1,1))


