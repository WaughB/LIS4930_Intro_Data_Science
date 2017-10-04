# Brett Waugh
# 4 October 2017
# 3.2.1 Visualization Before Analysis
# Creates four comparative scatterplots based on the Anscombe dataset.


# Anscombe dataset is available with RStudio installation.
data(anscombe)  

# Sets the categories.
nrow(anscombe) # The number of rows in Anscombe. 
levels <-gl(4, nrow(anscombe)) # Groups into four 'levels'.

# Put Anscombe dataset into a data frame.
mydata <- with(anscombe, data.frame(x=c(x1, x2, x3, x4), y=c(y1, y2, y3, y4), mygroup = levels))

# Install ggplot2, you have not already done so. 
library(ggplot2)

# Set the theme and create the scatterplots. 
theme_set(theme_bw()) # set plot color theme

ggplot(mydata, aes(x,y)) + 
  geom_point(size =4) +
  geom_smooth(method = "lm", fill =NA, fullrange=TRUE) +
  facet_wrap(~mygroup)