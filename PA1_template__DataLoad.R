# Load the data file
MyData <- read.csv("activity.csv", as.is = TRUE)

# Remove the NA values and store in created subset object
GoodActivityData <- MyData[complete.cases(MyData), ]
