# Brett Waugh
# 4 October 2017
# Shows relationship between the number of cylinders a car has and its
# miles-per-gallon (mpg) amount by car model. 

# Gets the car information and 
cars <- mtcars[order(mtcars$mpg),]

# Groups the cars into categories by color. 
cars$cyl <- factor(cars$cyl) # Grouping variable must be a factor. 
cars$color[cars$cyl==4] <-"darkgreen"
cars$color[cars$cyl==6] <-"blue"
cars$color[cars$cyl==8] <-"red"

# Creates a dotchart showing relationship
dotchart(cars$mpg, labels=row.names(cars), cex=0.7, groups = cars$cyl,
         main = "Miles Per Gallon (MPG) of Car Models/nGrouped by Cylinder",
         xlab="Miles Per Gallon", color =cars$color, gcolor = "black")