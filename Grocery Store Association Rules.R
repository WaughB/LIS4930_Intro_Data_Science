# Brett Waugh
# 6 November 2017
# Association Rules
# Creates a graph displaying the top ten items from a grocery store.
# Second graph (m1) is the association between all purchases.
# Third graph (m2) is a more refined version of the second graph. 

# Depends on installing these two packages. 
#install.packages('arules')
#install.packages('arulesViz')
library('arules')
library ('arulesViz')

# The data comes standard with the libraries. 
data("Groceries")
data <-Groceries

# Creates the first graph. 
itemFrequencyPlot(data, topN= 10)

################################################################################
# Prepares the data for the second graph. 
# This graph is useful for determing if someone purchased one thing, 
# how likely they are to buy something else. 
m1 <- apriori(data, parameter=list(support=0.007, confidence=0.25, minlen=2))
summary(m1)

# This displays the top ten results for the second graph. 
inspect(sort(m1, by="lift")[1:10])

# Creates the second graph. 
plot(m1, measure=c("support", "lift"), shading="confidence")

################################################################################
# Prepares the data for the third graph.
# This graph is more refined than the second, showing entries with higher
# confidence and support values only. 
m2 <- apriori(data, parameter=list(support=0.01, confidence=0.5))

# This displays the top ten results for the third graph. 
inspect(sort(m2, by="lift")[1:10])

# Creates the third graph. 
plot(m2, measure=c("support", "lift"), shading="confidence")

################################################################################

# Important to note is that the top value for confidence with this data is
# 0.5862 so using a confidence of anything above that will return null. 