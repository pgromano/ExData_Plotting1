process.data <- function(filename, date.start=NULL, date.stop=NULL){
    data <- read.table(filename, header=TRUE, sep=';', na.strings='?')
    data$Date <- as.Date(data$Date, format='%d/%m/%Y')
    if(!is.null(date.start) & !is.null(date.stop)){
        data <- subset(data, subset = (Date >= date.start & Date <= date.stop))
    }
    data$DateTime <- strptime(paste(data$Date, data$Time, sep = ":"), format='%Y-%m-%d:%H:%M:%S')
    return(data)
}