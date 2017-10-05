# Brett Waugh
# 4 October 2017
# Examining multiple variables. The difference that using Linear Regression (lr)
# and Local Polynomial Regression Fitting (LOESS) can make. 

# Ten-thousand numbers between 0 and 10 of uniform distribution.
x <-runif(10000, 0, 10)
x <-sort(x)

# Polynomial distribution.
y <- 200 + x^3 - 10*x^2 + x + rnorm(10000, 0, 20)

# Linear regression vs. LOESS
lr <- lm(y ~x)
poly <- loess(y ~x)

fit <-predict(poly) # fit a nonlinear line

# Scatterplot creation. 
plot(x,y)

# draw the fitted line for the linear regression
points(x, lr$coefficients[1] + lr$coefficients[2]*x, type = "p", col = 2)

# draw the fitted line with LOESS
points(x, fit, type = "p", col = 4)