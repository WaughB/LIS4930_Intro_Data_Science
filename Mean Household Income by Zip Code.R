# Brett Waugh
# 4 October 2017
# 3.2 Exploratory Data Analysis
# Creates a graph of houeshold income and zip code. 
# Depends on zipIncome.csv file. 

# Install readr. 
library(readr)

# Remember to fill in file location. 
zipIncome <- read_csv("C:/Users/Michael/Downloads/zipIncome.csv")

# Scatter plot of MeanEducation and MeanHouseholdIncome.
x <- zipIncome$MeanEducation # Creates the mean education as x variable. 
y <- zipIncome$MeanHouseholdIncome # Creates the mean income as y variable.

# Creates a data frame of x and y.
data <- as.data.frame(cbind(x, y))  

# Install ggplot2 
library(ggplot2)

# Box and Whiskers plot of Mean Household Income by Zip Code
ggplot(data=zipIncome, aes(x=as.factor(Zip1), y=log10(MeanHouseholdIncome))) +
  geom_point(aes(color=factor(Zip1)), alpha = 0.2, position ="jitter")+
  geom_boxplot(outlier.size=0, alpha=0.1) +
  guides(colour=FALSE) + 
  ggtitle ("Mean Household Income by Zip Code")