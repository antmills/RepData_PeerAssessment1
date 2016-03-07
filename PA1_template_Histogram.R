#Calculate total number of steps taken per day
TotalStepsPerDay <- aggregate(steps ~ date, GoodActivityData, sum)

#Histogram of number of steps per day
hist(TotalStepsPerDay$steps, main = "Total Number Of Steps Per Day (Histogram)", xlab = "Steps per day", col="purple")