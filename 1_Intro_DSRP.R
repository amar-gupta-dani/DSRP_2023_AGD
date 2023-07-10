#View(iris)
#iris[1:5,1]
#iris$Sepal.Length 

first5 <- iris[1:5,1]
first5

# Basic statistics functions in R
mean(first5)
mean(iris$Sepal.Length)

median(first5)
median(iris$Sepal.Length)

max(iris$Sepal.Length) - min(iris$Sepal.Length) # Range 
var(iris$Sepal.Length) # Variance
sd(iris$Sepal.Length) # Standard Deviation
sqrt(var(iris$Sepal.Length)) # Variance is SD squared
IQR(iris$Sepal.Length) # IQR
quantile(iris$Sepal.Length,0.25) # Find the break-off value for a percentage of data

lower_outliers <- mean(iris$Sepal.Length) - 3*sd(iris$Sepal.Length)
lower_outliers

upper_outliers <- mean(iris$Sepal.Length) + 3*sd(iris$Sepal.Length)
upper_outliers