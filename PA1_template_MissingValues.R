# Calculate and report the total number of missing values in the dataset (i.e. the total number of rows with NAs)
MissingValue <- MyData[!complete.cases(MyData), ]
print (paste("The number of rows with missing values is ",nrow(MissingValue)))

# Loop thru all the rows of activity, find the one with NA for steps.
# For each identify the interval for that row
# Then identify the avg steps for that interval in avg_steps_per_interval
# Substitute the NA value with that value

for (i in 1:nrow(MyData)) {
        if(is.na(MyData$steps[i])) {
                val <- AvgStepsAllDays$steps[which(AvgStepsAllDays$interval == MyData$interval[i])]
                MyData$steps[i] <- val 
        }
}



#Calculate total number of steps taken per day with imputed Data
TotalStepsPerDay_imputed <- aggregate(steps ~ date, MyData, sum)

#Histogram of number of steps per day with imputed Data
hist(TotalStepsPerDay_imputed$steps, main = "Total Number Of Steps Per Day (Histogram - Imputed Data)", xlab = "Steps per day", col="blue")

#Calculate mean of imputed data
MeanOfSteps_imputed<-mean(TotalStepsPerDay_imputed$steps)
print(paste("The Mean of the total number of steps per day is ",MeanOfSteps_imputed))

#Calculate median of imputed data
MedianOfSteps_imputed<-median(TotalStepsPerDay_imputed$steps)
print(paste("The Median of the total number of steps per day is ",MedianOfSteps_imputed))