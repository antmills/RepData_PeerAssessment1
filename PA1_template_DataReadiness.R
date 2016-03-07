library(reshape2)
actMeltDate <- melt(activity, id.vars="date", measure.vars="steps", na.rm=FALSE)
actCastDate <- dcast(actMeltDate, date ~ variable, sum)