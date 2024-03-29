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
w<-data.frame(houses$TotalUSD, houses$SqM_Building,houses$SqM_Land,houses$Year,houses$Baths)
chart.Correlation(w)


##Γ##
shapiro.test(houses$TotalUSD)
shapiro.test(houses$SqM_Building)
shapiro.test(houses$SqM_Land)

shapiro.test(log10(houses$TotalUSD))
shapiro.test(log10(houses$SqM_Building))
shapiro.test(log10(houses$SqM_Land))


##Δ##
boxplot((log10(houses$TotalUSD))~houses$Fireplace)

AN = aov(log10(houses$TotalUSD)~houses$Fireplace)
summary(AN)
AN$coef


##E##
LM<-lm((log10(houses$TotalUSD))~houses$Fireplace)
summary(LM)
step(LM,direction = 'both')

##ΣΤ##
