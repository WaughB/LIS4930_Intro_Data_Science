# Brett Waugh
# 4 October 2017
# Shows relationship between the number of cylinders a car has and its
# miles-per-gallon (mpg) amount. 

# Gets the car information and 
cars <- mtcars[order(mtcars$mpg),]

# Groups the cars into categories by color. 
cars$cyl <- factor(cars$cyl) # Grouping variable must be a factor. 
cars$color[cars$cyl==4] <-"red"
cars$color[cars$cyl==6] <-"blue"
cars$color[cars$cyl==8] <-"darkgreen"

# Creates a barplot of the information. 
counts <- table(mtcars$gear, mtcars$cyl)
barplot(counts, main = "Distribution of Car Cylinder Counts and Gears",
        xlab = "Number of Cylinders", ylab="Counts",
        col=c("green", "blue", "red"),
        legend = rownames(counts), beside=TRUE,
        args.legend = list(x="top", title = "Number of Gears"))