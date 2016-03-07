#average number of steps across all days
AvgStepsAllDays <- aggregate(steps ~ interval, GoodActivityData, mean)
Intervals <- aggregate(steps ~ date, GoodActivityData, mean)

# Make a time series plot (i.e. type = "l") of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all days (y-axis)
plot(AvgStepsAllDays$interval, AvgStepsAllDays$steps, type='l', main="Average Number of Steps (Interval)", xlab="Intervals", ylab="Avg # Of Steps", col="blue")
abline(h=mean(Intervals$steps, na.rm=TRUE),col="red",lwd=2)