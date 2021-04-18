# Statistical Analysis of MechaCar Data

## Linear Regression to Predict MPG

![](Resources/Challenge1.png)

* Which Variables provide non-random variance to the mpg values?
The Vehicle Weight, Vehicle Length, and Ground Clearance all provide non-random variance to the mpg values. Vehicle weight is statistically much more reliable as a predictive variable.
* Is the slope of the linear model considered to be zero?
Our assumed significance level is 0.05%, and the P-value of this linear model is well below that. Because we can reject the null hypothesis, the slope of the model is not zero.
* Does this linear model predict mpg of MechaCar prototypes effectively?
Because our p-value (5.35e-11) is well below the 0.05% cutoff value, and our R-squared value is around 71.5%, this model does predict the mpg of MechaCar prototypes effectively.
