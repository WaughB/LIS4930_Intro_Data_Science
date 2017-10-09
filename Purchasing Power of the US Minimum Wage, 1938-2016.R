# Brett Waugh
# 8 October 2017
# Shows the purchasing power of the United States Federal Minimum wage
# from its founding in 1938 to 2016. The data for 2017 has not yet been
# validated.
# Data derived from: http://www.usinflationcalculator.com/inflation/consumer-price-index-and-annual-percent-changes-from-1913-to-2008/
# Calculated purchasing power based on minimum wage and the Consumer Price Index.

# Gets the data file, remember to put your own file location in for it to work. 
library(readxl)
Purchasing_Power_1938_2016 <- read_excel("~/Purchasing Power 1938-2016.xlsx")
View(Purchasing_Power_1938_2016)

# Creates two variables for the years and purchasing powers. 
year <- Purchasing_Power_1938_2016$Year
power <- Purchasing_Power_1938_2016$`Purchasing Power`

# Creates the graph. 
plot(year, power, main = "Purchasing Power of the US Minimum Wage, 1938-2016", xlab = "Year", ylab = "Purchasing Power", type = "l")