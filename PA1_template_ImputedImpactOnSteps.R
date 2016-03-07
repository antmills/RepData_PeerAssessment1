#What is the impact of imputing missing data on the estimates of the total daily number of steps?
MyDifference<-sum(MyData$steps)-sum(GoodActivityData$steps)
MyDifference