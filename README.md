# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
<b>1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?</b>

Based on the statistical summary of the multiple linear regression model, the variables that most impact to the mpg values were vehicle length and ground clearance. Vehicle weight was close to a non-random result with a p-value of 0.08, but this is not nearly as sigificant compared to vehicle length and ground clearance.

<b>2. Is the slope of the linear model considered to be zero? Why or why not?</b>

The slope of the linear model is not considered to be zero (or a flat line) because the r-squared value of 0.71 suggests a positive correlation.

<b>3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?</b>

Since the r-squared value suggests a positive correlation and the p-value is significant, the linear model is a sufficient model of predicting the MPG of MechaCar prototypes. However, one thing to consider is that there are multiple variables that lack significance which could suggest overfitting. This means that our current model may not predict future data as well as we'd like.
