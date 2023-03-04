# MechaCar_Statistical_Analysis

## Purpose
AutosRUs's new car prototype, MechaCar, is experiencing some production and manufacturing issues. The goal of the analysis is to run a variety of statistical tests on the production data to provide insights into comparisons between sample groups and potential determinants of vehicle performance. These insights will be provided to the company help the manufacturing team deliver on their goals to improve production. 

## Linear Regression to Predict MPG
The heart of this analysis is to gain insights about production factors that may impact vehicle performance. The production csv file contains data on vehicle length, vehicle weight, spoiler angle, drivetrain, ground clearance, and miles per gallon test results for 50 prototype vehicles. To examine how each design specification variable may impact the vehicle performance, we can create a multiple linear regression model using mpg as the dependent variable of interest, and the remaining variables as independent variables. 

This linear regression model produces the following results for intercept and slope coefficient.

<img width="786" alt="image" src="https://user-images.githubusercontent.com/114873837/222917814-a38e468f-f8b9-4fcd-af59-61186ca0a06d.png">

Converting these results into the standard y=mx+b format for a line, the model would appear as the following:

**mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)

While we have the values of the coefficients and intercept populated in the model, in order to determine whether these production variables are statistically significant predictors of mpg test results, we need to examine the p-value and r-squared values.

<img width="869" alt="image" src="https://user-images.githubusercontent.com/114873837/222850177-02aeb0c4-67d9-45e5-8749-73790368b552.png">

* According to the results above, the variables of **vehicle length** and **ground clearance** each have p values much lower than the .05 standard to reject that the relationship between the data points and mpg occurred by chance. The intercept value is also statistically significant under the 0.05 threshold.   

* When creating a regression model, the null hypothesis is set to assume that the slope of the model is zero, and the alternative hypothesis asserts that the slope of the model is not zero. In this model, the p-value is 5.35e-11, which is much lower than the statistical threshold of .05, and we can reject the null hypothesis that the slope is zero.  

* Does this linear model predict mpg of MechaCar prototypes effectively?
The R-squared value in the summary above is 0.7149. This means that 71.49% of predictions made when using this model will be correct. There may be additional production factors not included in our dataset that would be helpful to collect and include in the model to improve its "goodness of fit", but this r-squared value indicates that the model is strong.  

## Summary Statistics on Suspension Coils

For this section of the analysis, we use a data set containing weight capacities of suspension coils across production lots. Comparing results for coil weight capacities across the lots will help gain insights into any inconsistencies in manufacturing processes across lots. The variable of interest for this section is the PSI (pounds per square inch). In running summary tables on the PSI variable, we achieve the following results. 

Total summary: The code and resulting table summarizes the descriptive statistics of the PSI for the total coils manufactured.

<img width="802" alt="image" src="https://user-images.githubusercontent.com/114873837/222852534-b4e36281-5b5c-4637-b817-28fde1791716.png">


<img width="327" alt="image" src="https://user-images.githubusercontent.com/114873837/222851630-95c3883d-29f0-4683-9127-2c1d770a91b5.png">

Lot summary: The code and resulting table summarizes the descriptive statistics of the PSI for each manufacturing lot.
<img width="1165" alt="image" src="https://user-images.githubusercontent.com/114873837/222853689-8ea6fc44-fde6-4db5-904f-b68a1f26ba85.png">

<img width="469" alt="image" src="https://user-images.githubusercontent.com/114873837/222851708-e8281a64-b077-4f59-9512-4c8fb7c80317.png">
 

## T Tests on Suspension Coils
We are provided with information that the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. In order to determine whether manufacturing lots are meeting this safety threshold, we examine the variance and standard deviation of the PSI measures for the group as a whole as well as broken down by each lot.

<img width="495" alt="image" src="https://user-images.githubusercontent.com/114873837/222870632-4ca34862-75de-4c87-a882-f92e2da872d5.png">

<img width="439" alt="image" src="https://user-images.githubusercontent.com/114873837/222870701-1e746d92-59a4-4b9d-aad0-1a6feb7b463b.png">

<img width="870" alt="image" src="https://user-images.githubusercontent.com/114873837/222870732-cbc3f2dc-4fdb-4fd2-be13-a43858536547.png">

<img width="611" alt="image" src="https://user-images.githubusercontent.com/114873837/222870762-a2116162-80f7-4523-97be-55c2ae95c817.png">


## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:

What metric or metrics are you going to test?

What is the null hypothesis or alternative hypothesis?

What statistical test would you use to test the hypothesis? And why?

What data is needed to run the statistical test?
