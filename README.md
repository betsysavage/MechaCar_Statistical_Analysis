# MechaCar_Statistical_Analysis

## Purpose
The new car prototype, MechaCar, from the Autos R Us company is having issues in production that are impacting the manufacturing department. The goal of the analysis is to run a variety of statistical tests on the production data to provide insights into comparisons between sample groups and potential determinants of vehicle performance. These insights will be provided to the company to improve production and help the manufacturing department deliver on goals. 

## Linear Regression to Predict MPG
The heart of this analysis is to draw conclusions about production factors that may impact vehicle performance.


The linear regression code produces the following model: 

mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)

<img width="869" alt="image" src="https://user-images.githubusercontent.com/114873837/222850177-02aeb0c4-67d9-45e5-8749-73790368b552.png">


* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?


* Is the slope of the linear model considered to be zero? Why or why not?


* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?



## Summary Statistics on Suspension Coils

For this section of the analysis, we use a data set containing weight capacities of suspension coils across production lots. Comparing results across the lots will help gain insights into any inconsistencies in manufacturing processes across lots. In particular, the 

Total summary:

<img width="802" alt="image" src="https://user-images.githubusercontent.com/114873837/222852534-b4e36281-5b5c-4637-b817-28fde1791716.png">


<img width="327" alt="image" src="https://user-images.githubusercontent.com/114873837/222851630-95c3883d-29f0-4683-9127-2c1d770a91b5.png">

Lot summary:
<img width="1165" alt="image" src="https://user-images.githubusercontent.com/114873837/222853689-8ea6fc44-fde6-4db5-904f-b68a1f26ba85.png">

<img width="469" alt="image" src="https://user-images.githubusercontent.com/114873837/222851708-e8281a64-b077-4f59-9512-4c8fb7c80317.png">



We are provided with information that the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. In order to determine whether manufacturing lots are meeting this safety threshold, we examine the variance and standard deviation of the PSI measures for the group as a whole as well as broken down by each lot. 


## T Tests on Suspension Coils



## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:

What metric or metrics are you going to test?

What is the null hypothesis or alternative hypothesis?

What statistical test would you use to test the hypothesis? And why?

What data is needed to run the statistical test?
