library(ggplot2)
library(ggthemes)
fortune_1000 <- read.csv("csv_files/Fortune_1000.csv")

ggplot(data = fortune_1000, aes(x = profit)) + geom_density(fill = 'lightgreen', color='white') + theme_bw() + 
  labs(
    title = 'Profit of the Fortune 1000',
    x = 'Profit',
    y = '# of Companies',
    caption = 'Fortune 1000 (2022)'
  ) + 
  theme(
    plot.title = element_text(face = 'bold.italic',size=20),
    axis.title.x = element_text(face = 'bold.italic',size=10),
    axis.title.y = element_text(face = 'bold.italic',size=10),
    plot.caption = element_text(size=8, face='italic',color='grey70', hjust=0),
  )

profit_fortune_1000 <- fortune_1000$profit
lower_outliers <- mean(profit_fortune_1000) - 3*sd(profit_fortune_1000)
upper_outliers <- mean(profit_fortune_1000) + 3*sd(profit_fortune_1000)
reduced_fortune_1000 <- profit_fortune_1000[profit_fortune_1000 > lower_outliers & profit_fortune_1000 < upper_outliers]

ggplot(data = fortune_1000, aes(x = sector, y = profit)) + geom_boxplot() + theme_bw() + 
  labs(
    title = 'Profit of the Fortune 1000 by Sector',
    x = 'Sectors',
    y = 'Profit (in thousands)',
    caption = 'Fortune 1000 (2022)'
  ) + 
  theme(
    plot.title = element_text(face = 'bold.italic',size=20),
    axis.title.x = element_text(face = 'bold.italic',size=10),
    axis.title.y = element_text(face = 'bold.italic',size=10),
    plot.caption = element_text(size=8, face='italic',color='grey70', hjust=0),
    axis.text.x = element_text(angle=90,vjust=0.8,size=10)
  )

gtiggplot(data = fortune_1000, aes(x = revenue, y = profit, color = sector)) + geom_jitter() + theme_bw() + 
  labs(
    title = 'Profit vs. Revenue of the Fortune 1000 by Sector',
    x = 'Revenue',
    y = 'Profit',
    caption = 'Fortune 1000 (2022)'
  ) + 
  theme(
    plot.title = element_text(face = 'bold.italic',size=20),
    axis.title.x = element_text(face = 'bold.italic',size=10),
    axis.title.y = element_text(face = 'bold.italic',size=10),
    plot.caption = element_text(size=8, face='italic',color='grey70', hjust=0),
    axis.text.x = element_text(angle=90,vjust=0.8,size=10)
  ) + scale_x_continuous(breaks = seq(0,600000,100000))

