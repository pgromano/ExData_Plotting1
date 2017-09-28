plot4 <- function(data){
    png(filename='plot4.png', width=480, height=480)
    par(mfrow=c(2,2))

    # Plot 1
    plot(data$DateTime, data$Global_active_power, type='l',
        xlab='', ylab='Global Active Power (kilowatts)')

    # Plot 2
    plot(data$DateTime, data$Voltage, type='l',
        xlab='datetime', ylab='Voltage')

    # Plot 3
    plot(data$DateTime, data$Sub_metering_1, type='l', col='black',
        xlab='', ylab='Global Active Power (kilowatts)')

    lines(data$DateTime, data$Sub_metering_2, col='red',
        xlab='', ylab='Global Active Power (kilowatts)')

    lines(data$DateTime, data$Sub_metering_3, col='blue',
        xlab='', ylab='Global Active Power (kilowatts)')

    legend('topright', c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col=c('black','red','blue'), lty=1)

    # Plot 4
    plot(data$DateTime, data$Global_active_power, type='l',
        xlab='datetime', ylab='Global_active_power')
    dev.off()
}