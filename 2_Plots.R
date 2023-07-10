install.packages("ggplot2")

library(ggplot2)
#View(mpg)
ggplot(data = iris, aes(x = Sepal.Length)) + geom_histogram() +
  labs(x = "Sepal Length",
       y = "Count",
       title = "Sepal Length of Irises")

ggplot(data = iris, aes(x = Sepal.Length, y = after_stat(count))) + geom_density()

ggplot(data = iris, aes(x = Sepal.Length)) + geom_boxplot()

ggplot(data = iris, aes(x = Sepal.Length, y = Species)) + geom_boxplot()

ggplot(data = iris, aes(x = Sepal.Length, y = Species)) + geom_violin() + geom_boxplot(width = 0.2)

ggplot(data = iris, aes(x = Sepal.Length, y = Species, fill = Species)) + 
  geom_bar(stat = "summary", fun="mean")

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

ggplot(data = iris, aes(x = Sepal.Length, y = Species)) + geom_jitter()
