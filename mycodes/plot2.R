library(sqldf)


sqls <- paste0("select * from file where Date = '1/2/2007' or Date = '2/2/2007'")
hp_cons <- read.csv.sql("household_power_consumption.txt", sql = sqls, sep=';', header=TRUE)

plot(hp_cons$Global_active_power,type='l',ylab='Global Active Power (kilowatts)', xlab='', xaxt='n')
at <- seq(0, 2880, by=1440)
axis(1, at=at, labels=c('Thu', 'Fri', 'Sat'))

dev.copy(png, file = 'plot2.png')
dev.off()