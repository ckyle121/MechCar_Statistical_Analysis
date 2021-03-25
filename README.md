# MechCar Statistical Analysis
## Linear Regression to Predict MPG

![deliverable1](https://user-images.githubusercontent.com/75647359/112527142-b7891500-8d70-11eb-8a83-3fd94684641e.png)

In order to determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values. In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to these results, vehicle weight and ground celarance are statistically likely to provide non random amounts of variance to the linear model. The slope of this linear model, therefore, is not considdered to be zero because there are variables that are not determined by random chance or error. This linear model has an R squared of 0.7149, , which means that roughly 71% of all predictions will be correct when using this linear model. This model also has an extremely low p-value which means it is statistically significant. This model, therefore, predicts the mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils 
The Total Summary dataframe below displays the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

![deliverable2c](https://user-images.githubusercontent.com/75647359/112536103-0d62ba80-8d7b-11eb-88e9-83a447ee13d2.png)

The Lot Summary dataframe below displays the mean, median, variance, and standard deviation of the suspension coil’s PSI column grouped by Manufacturing Lot.

![deliverable2 b](https://user-images.githubusercontent.com/75647359/112535787-afce6e00-8d7a-11eb-87aa-334195f295d4.PNG)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Currently, Manufacturing Lots One and Two are the only lots meeting that requirement. 

## T-Tests on Suspension Coils
The test below displays the result of the t test of the total lot summary against the mean PSI of the population. 

![d31](https://user-images.githubusercontent.com/75647359/112539835-78ae8b80-8d7f-11eb-93f0-53e623dcb0cb.PNG)

There are a number of metrics produced from the t.test()function, but for now we will only concern ourselves with the calculated p-value. Assuming our significance level was the common 0.05 percent, our p-value is larger than our significance level. Therefore, we have sufficient evidence to accept the null hypothesis, and we would state that the two means are statistically different.

The test below displays the result of the t test of the total lot summary against the mean PSI of the population for manufacturing lot one.

![lot1b](https://user-images.githubusercontent.com/75647359/112548098-b1536280-8d89-11eb-9301-77a3fe5c2921.PNG)

Assuming our significance level was the common 0.05 percent, our p-value (0.00000000001568) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

The test below displays the result of the t test of the total lot summary against the mean PSI of the population for manufacturing lot two.

![lot2b](https://user-images.githubusercontent.com/75647359/112548183-d21bb800-8d89-11eb-8bdb-e3bce757eb5a.PNG)

Assuming our significance level was the common 0.05 percent, our p-value (0.0005911) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

The test below displays the result of the t test of the total lot summary against the mean PSI of the population for manufacturing lot three. 

![lot3b](https://user-images.githubusercontent.com/75647359/112548391-245cd900-8d8a-11eb-85c8-4a1385574d74.PNG)

Assuming our significance level was the common 0.05 percent, our p-value (0.1589) is below our significance level. Therefore, we do have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically dissimilar.

## Study Design: MechaCar vs Competition
If one wanted to create a statistical study to quanitfy how the MechaCar copany performs against the competition, one would want to run a linear regression taking into account different variables that might interest a consumer. For example, one might 
