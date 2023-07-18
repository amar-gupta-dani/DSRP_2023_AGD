# DSRP_2023_AGD

I am currently in the **Data Science Research Program** and this is a repository with all my works in it. The code is all in R and I'll detail my work from the all lectures and labs below.

-------------------------------------------------------------------------------

## Lecture and Lab 1

We first learned the very basics of R and setting mean, median, standard deviation, and IQR. Nothing much, simple stuff. 

## Lecture and Lab 2 

Exploring different types of plots in R. We did histograms, density plots, boxplots, violin, bar plot, scatter plot (also using jitter. 
In the lab, we began working with our own dataset (I used a dataset from kaggle on the [Fortune 1000](https://www.kaggle.com/datasets/winston56/fortune-500-data-2021)). 

## Lecture and Lab 3 

Doing some more work with ggplot and ggthemes. Throughout the lectures and labs I used the same [Fortune 1000](https://www.kaggle.com/datasets/winston56/fortune-500-data-2021) dataset to do all the work. We made simple plots and I also removed outliers from the dataset. 

## Lecture and Lab 5

Here we did dataset manipulation using *dplyr*. We worked with the pre-loaded starwars dataset. Here's a summary of what I learned:
1. You use ```R filter() ``` to subset rows. 
2. To compare variables you can use  ```R <, >, <=, >=```
3. Order rows with ```R arrange()``` not used too often but nice to move some columns around and order cases within a column descending or ascending.
4. Choose certain columns with ```R select()``` you can choose to view a couple of columns but also to search for and remove columns.
5. Add new columns using ```R mutate()```

Eventually I used these functions to add a profit margin column to my dataset and made a visualization with the profit margins of each sector.

## Lecture and Lab 6 

Overview of statistics, notably setting up hypotheses, t-test (one and two tail), ANOVA, and Chi-square. I used these to test whether profit margin, revenue, or profit correlates with the state the company is headquartered in.

## Lectures and Labs 7/8 

I group these two together as they both involve ML. We tackled unsupervised and supervised learning models. Unsupervised means there are no labels to the data and the model doesn't know the right answer. 
Supervised is used to predict or classify using data it has been trained on. In the lab I created a logistic regression model to classify whether a company was in Financials or Tech based on profit, revenue, and number of employees. 

![Log Reg]([https://documentation.meraki.com/@api/deki/files/5903/Screen_Shot_2017-12-03_at_8.09.11_PM.png?revision=1&size=bestfit&width=622&height=242](https://www.google.com/url?sa=i&url=https%3A%2F%2Fmachine-learning.paperspace.com%2Fwiki%2Flogistic-regression&psig=AOvVaw1S_aD0cpRLlzJF3gqpCu2R&ust=1689795951445000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPDqy4yKmYADFQAAAAAdAAAAABAD)https://www.google.com/url?sa=i&url=https%3A%2F%2Fmachine-learning.paperspace.com%2Fwiki%2Flogistic-regression&psig=AOvVaw1S_aD0cpRLlzJF3gqpCu2R&ust=1689795951445000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPDqy4yKmYADFQAAAAAdAAAAABAD)

It was somewhat successful, receiving an F1 score of 0.7059 when classifying Financial companies. The other model I created was a boosted decision tree to perform the same function: to classify whether a company was in Financials or Tech based on profit, revenue, and number of employees.

![Log Reg]([]https://www.google.com/url?sa=i&url=https%3A%2F%2Faffine.ai%2Fgradient-boosting-trees-for-classification-a-beginners-guide%2F&psig=AOvVaw3PL-7NEpK1NNWRPx_I8ipE&ust=1689798120659000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKifhdiKmYADFQAAAAAdAAAAABAD)

This was surprising less aaccurate than the logistic regression model. This model received an F1 score of 0.6512. I believe the logistic regression model is best suited to separate into 2 different groups whereas the boosted trees is better for several groups.
