WeekDay <- function(date_val) {
        WdDate <- weekdays(as.Date(date_val, '%Y-%m-%d'))
        if  (!(WdDate == 'Saturday' || WdDate == 'Sunday')) {
                testData <- 'Weekday'
        } else {
                testData <- 'Weekend'
        }
        testData
}


MyData$day_type <- as.factor(sapply(MyData$date, WeekDay))
library(ggplot2)

StepsPerDay_imputed <- aggregate(steps ~ interval+day_type, MyData, mean)



myplot <- ggplot(StepsPerDay_imputed, aes(interval, steps)) +
        geom_line(stat = "identity", aes(colour = day_type)) +
        theme_gray() +
        facet_grid(day_type ~ ., scales="fixed", space="fixed") +
        labs(x="Interval", y=expression("No of Steps")) +
        ggtitle("Number Of Steps (Interval By Type Of Day ")
print(myplot)