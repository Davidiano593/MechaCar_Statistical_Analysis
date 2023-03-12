# MechaCar Statistical Analysis

## Overview

- In this project, autoRus appointed us to analyze the data of the Mechacar, a prototype car, which suffers from production problems that block the progress of the manufacturing team. Our purpose in this project is to provide information to the company so that they can move forward with the project, for which we must analyze statistical data, compare and summarize them.

## Summary

## Linear Regression to Predict MPG

![This is an image](https://i.pinimg.com/originals/20/c4/a5/20c4a549c0ddc8301692122995fdbe22.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    In the non-random variance we can highlight two values, the vehicle length with a value of 2.60e-12 and the ground clearance with a value of 5.21e-08

- Is the slope of the linear model considered to be zero? Why or why not?

    No, the p-values are less than the significance level (0.05).
    It is not zero since the values of the slope are different from zero, considering the vehicle length, AWD and ground clearance. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    Yes, our R squared value is greater than 0.7 this value is generally considered strong effect size, so we can say that it has a significant prediction

## Summary Statistics on Suspension Coils

![This is an image](https://i.pinimg.com/originals/51/73/bb/5173bb74a41adabd7bd68bbe93e79df8.png)

![This is an image](https://i.pinimg.com/originals/96/d4/e7/96d4e74c54b4dd855b1eea6fa98b46ab.png)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

    With the exception of lot 3 that does not meet the maximum PSI variation requirements since it has a variation of 170 PSI, lot 1 and 2 do meet the requirements since they have a variation below 7.5 PSI

## T-Tests on Suspension Coils

![This is an image](https://i.pinimg.com/originals/69/c2/2a/69c22a93f04188e5996e9e93a43dc5e4.png)

- Our general t-test moves away from zero by -1.89, however the sample mean is not different from the population mean at 1500 PSI, this has a p-value = 0.06.
- When we perform the T-test on the different lots we can conclude that lot 1 and 2 are not statistically different from the population mean, since lot 1 has a p-value of 1 and lot 2 has a p-value of 0.6072.
However, in lot 3 the t value is equal to -2.0916 and is further from zero, it also has a p value of 0.04, which is why it has a statistically different mean from the population mean.

## Study Design: MechaCar vs Competition

- What metric or metrics are you going to test?

When comparing two vehicles we must address several issues, in the first place I would compare emissions, when comparing emissions we can compare consumption and this will vary the MPG depending on whether we are in the city or on the highway.
Secondly the maintenance costs, an average of the price of the spare parts, compared to the competition as well as the services and together with this compare the breakdown statistics.
I would also compare power based on horsepower and torque to the competition. 
Finally the security classification

- What is the null hypothesis or alternative hypothesis?

- For our hypothesis we will test statistically what are the differences in the metrics that we are going to test with the competition.
The null hypothesis is that the metric measures do not vary significantly with those of the competition and the alternative hypothesis is that the metric measures of our prototype do vary significantly with those of the competition.

- What statistical test would you use to test the hypothesis? And why?

Based on the metrics that we are going to measure in general terms, our results should suggest that the Mechacar's fuel consumption is lower both in the city and on the highway, that maintenance costs are lower, and that engine power is higher. and that the security classification is superior; To do this, we would perform one-tailed T tests to find out if these values are higher or lower than those of the competition.

- What data is needed to run the statistical test?

the data we need are: fuel efficiency (MPG) compared to the competition under the same conditions, maintenance costs, that is, the price of parts and repair time against the competition, safety ratings based on the tests carried out by the NHTSA, and the power of the engine, this is measured in the amount of horsepower, with the pound-foot (torque) doing various tests such as: speed, starting and drag.