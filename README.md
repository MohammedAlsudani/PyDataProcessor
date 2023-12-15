# RMLPlayground

## Overview

This GitHub repository contains scripts for simple linear regression and data processing in R. The repository includes two main R scripts:

1. **SimpleLinearRegression.R**: This script demonstrates the implementation of simple linear regression. It uses the `Salary_Data.csv` dataset, splitting it into training and test sets, creating a linear regression model based on years of experience, and making predictions. Visualization of the predicted vs. actual salary for both the training and test sets is included.

2. **data_processing_template.R**: This script provides a template for data pre-processing. It imports the `Data.csv` dataset, handles missing data by imputing mean values, encodes categorical variables, and splits the dataset into training and test sets. Additionally, it performs feature scaling by standardizing numerical features.

## Usage

### SimpleLinearRegression.R

To use the simple linear regression script:

1. Make sure you have the required libraries installed: `readr`, `caTools`, `ggplot2`.
2. Ensure that the `Salary_Data.csv` dataset is in the same directory as the script.
3. Run the script to execute the simple linear regression analysis.

### data_processing_template.R

To use the data processing template:

1. Make sure you have the required library installed: `caTools`.
2. Ensure that the `Data.csv` dataset is in the same directory as the script.
3. Run the script to perform data pre-processing, including handling missing data, encoding categorical variables, and feature scaling.

## Additional Notes

Feel free to customize and adapt the scripts based on your specific datasets and requirements. For any issues or suggestions, please open an [issue](https://github.com/MohammedAlsudani/RMLPlayground/issues) on the repository.

Happy coding!
