# Brett Waugh
# 4 October 2017
# 3.2 Exploratory Data Analysis
# Creates a graph of houeshold income and education. 
# Depends on zipIncome.csv file. 

# Install readr. 
library(readr)

# Remember to fill in file location. 
zipIncome <- read_csv("~/zipIncome.csv")

# Scatter plot of MeanEducation and MeanHouseholdIncome.
x <- zipIncome$MeanEducation # Creates the mean education as x variable. 
y <- zipIncome$MeanHouseholdIncome # Creates the mean income as y variable.

# Creates a data frame of x and y.
data <- as.data.frame(cbind(x, y))  

# Install ggplot2.
library(ggplot2)

# Finished graph. 
ggplot(data, aes(x=x, y=y)) + 
  geom_point (size=2) +
  ggtitle ("Scatterplot of Education and Income") +
  theme (axis.text = element_text(size=12),
         axis.title = element_text(size = 14),
         plot.title = element_text(size = 20, face = "bold"))