##A##
library("readxl")
houses<-read_xls("C:/Users/George/Desktop/Data Mining Academy/Final_project/real_estate.xls")
View (houses)

which(is.na(houses))

na.omit(houses)
