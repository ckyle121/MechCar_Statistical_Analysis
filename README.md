# MechCar Statistical Analysis
## Linear Regression to Predict MPG

![deliverable1](https://user-images.githubusercontent.com/75647359/112527142-b7891500-8d70-11eb-8a83-3fd94684641e.png)

In order to determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values. In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to these results, vehicle weight and ground celarance are statistically likely to provide non random amounts of variance to the linear model. The slope of this linear model, therefore, is not considdered to be zero because there are variables that are not determined by random chance or error. This linear model has an R squared of 0.7149, , which means that roughly 71% of all predictions will be correct when using this linear model. This model also has an extremely low p-value which means it is statistically significant. This model, therefore, predicts the mpg of MechaCar prototypes effectively.
