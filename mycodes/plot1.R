library(sqldf)


sqls <- paste0("select * from file where Date = '1/2/2007' or Date = '2/2/2007'")
hp_cons <- read.csv.sql("household_power_consumption.txt", sql = sqls, sep=';', header=TRUE)

hist(hp_cons$Global_active_power,col='red',main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', cex.lab=0.9)

dev.copy(png, file = 'plot1.png')
dev.off()