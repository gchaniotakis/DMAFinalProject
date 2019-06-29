##A##
library("readxl")
houses<-read_xls("C:/Users/George/Desktop/Data Mining Academy/Final_project/real_estate.xls")
View (houses)

which(is.na(houses))

na.omit(houses)


##B##
summary(houses$TotalUSD)
summary(houses$SqM_Building)
summary(houses$SqM_Land)
summary(houses$Year)
summary(houses$Baths)


library(PerformanceAnalytics)
chart.Correlation(houses,pairs={1:5})


##Γ##
shapiro.test(houses$TotalUSD)
shapiro.test(houses$SqM_Building)
shapiro.test(houses$SqM_Land)

