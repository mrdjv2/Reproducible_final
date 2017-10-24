weather<-read.csv("repdata_data_StormData.csv")
library(dplyr)

##Population health

temp<- weather %>%   select(EVTYPE, FATALITIES, INJURIES)

fatalities<-aggregate(temp$FATALITIES, by=list(EVTYPE=temp$EVTYPE), FUN=sum)
injuries<-aggregate(temp$INJURIES, by=list(EVTYPE=temp$EVTYPE), FUN=sum)