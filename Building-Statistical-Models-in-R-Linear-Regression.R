###########################################################
###########################################################

## Building Statistical Models in R: Linear Regression

###########################################################
###########################################################

###########################################################
## Task One: Getting Started
## In this task, you will learn change the panes and font size.
## Also, you will learn how to set and check your current
## working directory
###########################################################

## 1.1: Get the working directory
getwd()

###########################################################
## Task Two: Import packages and dataset
## In this task, you will import the required packages and data
## for this project
###########################################################

## 2.1: Importing required packages
library(tidyverse)
library(ggpubr)
library(broom)
library(ggfortify)

## 2.2: Import the mpg.csv dataset


## 2.3: View and check the dimension of the dataset


###########################################################
## Task Three: Explore the dataset
## In this task, you will learn how to explore and clean the data
###########################################################

## 3.1: Take a peek using the head and tail functions


## 3.2: Check the internal structure of the data frame


## 3.3: Count missing values in the variables


## 3.4: Check the column names for the data frame


## 3.5: Drop the first column of the data frame



###########################################################
## Task Four: Data Visualizations
## In this task, you will learn how to visualize the variables 
## we will use to build the statistical model
###########################################################

## 4.1: Plot a scatter plot for the variables with cty on the x-axis
## hwy on the y-axis


## 4.2: Find the correlation between the variables


###########################################################
## Task Five: Model Building
## In this task, you will learn how to build a simple 
## linear regression model
###########################################################

## 5.1: Create a simple linear regression model using the variables


## 5.2: Plot the regression line for the model


###########################################################
## Task Six: Model Assessment I
## In this task, you will learn how to assess and interpret
## the result of a simple linear regression model
###########################################################

## 6.1: Assess the summary of the fitted model


## 6.2: Calculate the confidence interval for the coefficients


###########################################################
## Task Seven: Model Assessment II
## In this task, you will learn how to assess the accuracy
## of a simple linear regression model
###########################################################

## 7.1: Assess the summary of the fitted model


## 7.2: Calculate the prediction error of the fitted model


###########################################################
## Task Eight: Model Prediction
## In this task, you will learn how to check for metrics from
## the fitted model and make prediction for new values
###########################################################

## 8.1: Find the fitted values of the simple regression model


## 8.2: Find the fitted values of the simple regression model


## 8.3: Visualize the residuals of the fitted model
ggplot(model_diag_metrics, aes(cty, hwy)) +
  geom_point() +
  stat_smooth(method = lm, se = FALSE) +
  geom_segment(aes(xend = cty, yend = .fitted), color = "red", size = 0.3)

## 8.4: Predict new values using the model


###########################################################
## Task Nine: Assumptions Check: Diagnostic Plots
## In this task, you will learn how to perform diagnostics 
## check on the fitted model
###########################################################

## 9.1: Plotting the fitted model
par(mfrow = c(2, 2))   ## This plots the figures in a 2 x 2


## Better Version


## 9.2: Return par back to default
dev.off()

## or
par(mfrow = c(1, 1))

## 9.3: Return the first diagnostic plot for the model


## Build another regression model
model1 <- lm(hwy ~ sqrt(cty), data = data)
plot(model1, 1)

## 9.4: Return the second diagnostic plot for the model


## 9.5: Return the third diagnostic plot for the model



###########################################################
## Task Ten: Multiple Regression
## In this task, you will learn how to build and interpret the results 
## of a multiple regression model
###########################################################

## 10.1: Build the multiple regression model with hwy on the y-axis and
## cty and cyl on the x-axis


## 10.2: This prints the result of the model


## 10.3: Check the summary of the multiple regression model
summary(mul_reg_model)

## 10.4: Plot the fitted multiple regression model
autoplot(mul_reg_model)
