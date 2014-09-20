#Plot4Assignment2
library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- data.frame(readRDS("Source_Classification_Code.rds"))
sccsub <- subset(SCC, grepl("Coal", EI.Sector, ignore.case = TRUE))
mydata <- merge(NEI, sccsub, by = "SCC", all = FALSE)
qplot(mydata$year, mydata$Emissions, data = mydata, xlab = "Year", ylab = "Emissions")


#Plot5Assignment2
library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
sccsub <- data.frame(subset(SCC, grepl("motor", EI.Sector, ignore.case = TRUE)))
neisub <- data.frame(subset(NEI, fips == "24510"))
mydata <- merge(sccsub, neisub, by = "SCC", all = FALSE)
qplot(mydata$year, mydata$Emissions, data = mydata, xlab = "Year", ylab = "Emissions")




