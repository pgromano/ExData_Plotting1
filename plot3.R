plot3 <- function(data){
    png(filename='plot3.png', width=480, height=480)
    plot(data$DateTime, data$Sub_metering_1, type='l', col='black',
        xlab='', ylab='Global Active Power (kilowatts)')

    lines(data$DateTime, data$Sub_metering_2, col='red',
        xlab='', ylab='Global Active Power (kilowatts)')

    lines(data$DateTime, data$Sub_metering_3, col='blue',
        xlab='', ylab='Global Active Power (kilowatts)')

    legend('topright', c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col=c('black','red','blue'), lty=1)
    dev.off()
}