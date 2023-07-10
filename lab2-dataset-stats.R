fortune_1000 <- read.csv("csv_files/Fortune_1000.csv")

#Finding the mean, median, and range of Num. of employees
fortune_1000$num..of.employees
num_employ <- na.omit(fortune_1000$num..of.employees)
mean(num_employ)
median(num_employ)
max(num_employ) - min(num_employ)
var(num_employ)/length(num_employ)
sd(num_employ)
IQR(num_employ)

lower_outliers <- mean(num_employ) - 3*sd(num_employ)
upper_outliers <- mean(num_employ) + 3*sd(num_employ)
reduced_num_employ <- num_employ[num_employ > lower_outliers & num_employ < upper_outliers]

mean(reduced_num_employ)
median(reduced_num_employ)

lower_outliers
