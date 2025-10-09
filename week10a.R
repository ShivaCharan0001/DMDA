#Getting the data points in form of a R vector
snowfall <- c(630.4, 911.5, 683.5, 790, 1170.8, 860.1, 1330.6, 996.6, 783.2, 982, 881.8, 1021)

#Converting it into a time series object
snowfall_timeseries <- ts(snowfall, start = c(2023,1), frequency = 8)

#Printing the timeseries data
print(snowfall_timeseries)

#Giving a name to the chart file
png(file = "snowfall.png")

#Plotting a graph of the time series
plot(snowfall_timeseries)

#Saving the file
dev.off()