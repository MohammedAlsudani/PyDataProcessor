# Load necessary libraries
library(readr)
library(caTools)
library(ggplot2)

# Read the dataset from the CSV file
dataset <- read.csv('Salary_Data.csv')

# Set seed for reproducibility
set.seed(123)

# Split the dataset into training and test sets
split <- caTools::sample.split(dataset$Salary, SplitRatio = 2/3)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

# Create a linear regression model using the training set
regressor <- lm(Salary ~ YearsExperience, data = training_set)

# Make predictions on the test set using the trained model
y_pred <- predict(regressor, newdata = test_set)

# Function to plot Salary vs Experience
plot_salary_experience <- function(data, title) {
  ggplot(data, aes(x = YearsExperience, y = Salary)) +
    geom_point(color = 'green') +
    geom_line(aes(y = predict(regressor, newdata = data)), color = 'red') +
    ggtitle(title) +
    xlab('Years of experience') +
    ylab('Salary')
}

# Plotting Salary vs Experience for the training set
plot_salary_experience(training_set, 'Training Set: Predicted vs Actual Salary based on Experience')

# Plotting Salary vs Experience for the test set
plot_salary_experience(test_set, 'Test Set: Predicted vs Actual Salary based on Experience')
