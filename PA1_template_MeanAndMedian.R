#Calculate mean
MeanOfSteps<-mean(TotalStepsPerDay$steps)
print(paste("The Mean of the total number of steps per day is ",MeanOfSteps))

#Calculate median
MedianOfSteps<-median(TotalStepsPerDay$steps)
print(paste("The Median of the total number of steps per day is ",MedianOfSteps))