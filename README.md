# MechaCar_Statistical_Analysis

## Purpose:
AutosRUs's new car prototype, MechaCar, is experiencing some production and manufacturing issues. The goal of the analysis is to run a variety of statistical tests on the production data to provide insights into comparisons between sample groups and potential determinants of vehicle performance. These insights will be provided to the company help the manufacturing team deliver on their goals to improve production. 

## Linear Regression to Predict MPG
The goal of this analysis is to gain insights about production factors that may impact vehicle performance. The production csv file contains data on vehicle length, vehicle weight, spoiler angle, drivetrain, ground clearance, and miles per gallon test results for 50 prototype vehicles. To examine how each design specification variable may impact the vehicle performance, we can create a multiple linear regression model using mpg as the dependent variable of interest, and the remaining variables as independent variables. 

### Results:
This linear regression model produces the following results for intercept and slope coefficient.

<img width="786" alt="image" src="https://user-images.githubusercontent.com/114873837/222917814-a38e468f-f8b9-4fcd-af59-61186ca0a06d.png">

Converting these results into the standard y=mx+b format for a line, the model would appear as the following:

**mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)**

While we have the values of the coefficients and intercept populated in the model, in order to determine whether these production variables are statistically significant predictors of mpg test results, we need to examine the p-value and r-squared values.

<img width="869" alt="image" src="https://user-images.githubusercontent.com/114873837/222850177-02aeb0c4-67d9-45e5-8749-73790368b552.png">

* According to the results above, the variables of **vehicle length** and **ground clearance** each have p values much lower than the .05 standard to reject that the relationship between the data points and mpg occurred by chance. The intercept value is also statistically significant under the 0.05 threshold.   

* When creating a regression model, the null hypothesis is set to assume that the slope of the model is zero, and the alternative hypothesis asserts that the slope of the model is not zero. In this model, the p-value is 5.35e-11, which is much lower than the statistical threshold of .05, and we can reject the null hypothesis that the slope is zero.  

* The R-squared value in the summary above is 0.7149. This means that 71.49% of predictions made when using this model will be correct. There may be additional production factors not included in our dataset that would be helpful to collect and include in the model to improve its "goodness of fit", but this r-squared value indicates that the model is strong enough to predict the mpg of MechaCar prototypes effectively.  

## Summary Statistics on Suspension Coils

For this section of the analysis, we review a data set containing weight capacities of suspension coils (measured in pounds per square inch) created by various manufacturing lots. Comparing summary descriptive statistics for PSI measures across the lots will help gain insights into any inconsistencies in the manufacturing processes that may result in variance in weight capacities for coils between the groups.

### Results

**Total summary:** 
The R code and resulting table summarizes the descriptive statistics of the PSI for the **total coils manufactured**.

<img width="802" alt="image" src="https://user-images.githubusercontent.com/114873837/222852534-b4e36281-5b5c-4637-b817-28fde1791716.png">


<img width="327" alt="image" src="https://user-images.githubusercontent.com/114873837/222851630-95c3883d-29f0-4683-9127-2c1d770a91b5.png">

**Lot summary:** 
The R code and resulting table summarizes the descriptive statistics of the PSI for **each of the three manufacturing lots**.
<img width="1165" alt="image" src="https://user-images.githubusercontent.com/114873837/222853689-8ea6fc44-fde6-4db5-904f-b68a1f26ba85.png">

<img width="469" alt="image" src="https://user-images.githubusercontent.com/114873837/222851708-e8281a64-b077-4f59-9512-4c8fb7c80317.png">
 
We are provided with information that the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. While the overall PSI variance of the total population of observations is 62.29, which is within the 100 threshold, Lot 3 has a large variance of 170.28, which indicates a wide spread within the data. It is possible that there are some outliers in the data set that are impacting the variance results, but Manufacturing Lot 3 must be examined further to improve their adherence to the design and safety standards of suspension coils.

## T Tests on Suspension Coils

From the summary statistics above, the mean values of PSI measures for coils made at each manufacturing lot appear to range between 1496.14 (Lot 3) and 1500.2 (Lot 2). It is possible that these mean values were simply observed by chance, and there is no statistically difference in means between the sample group populations and the total group population. To help us gain insight into whether the observed difference in mean values is statistically significant, we perform a two-tailed one-sample t-test.

### Results

The initial t-test compares the overall group suspension coil PSI mean to a true population mean of 1500 PSI.  
<img width="495" alt="image" src="https://user-images.githubusercontent.com/114873837/222870632-4ca34862-75de-4c87-a882-f92e2da872d5.png">

<img width="439" alt="image" src="https://user-images.githubusercontent.com/114873837/222870701-1e746d92-59a4-4b9d-aad0-1a6feb7b463b.png">
Because the p-value is 0.06, we fail to reject the null hypothesis that the true mean of the group is the same as the true population mean of 1500 PSI.

The next t-tests compare the suspension coil measures of each manufacturing lot to a true population mean of 1500 PSI. 

<img width="870" alt="image" src="https://user-images.githubusercontent.com/114873837/222870732-cbc3f2dc-4fdb-4fd2-be13-a43858536547.png">

<img width="611" alt="image" src="https://user-images.githubusercontent.com/114873837/222870762-a2116162-80f7-4523-97be-55c2ae95c817.png">
The results for lots 1 and 2 display p-values of 1 and 0.6, respectively. These numbers are both higher than the typical threshold of 0.5, meaning that we cannot reject the null hypothesis that the true mean of these groups is 1500. The result for lot 3, however, displays a p-value of 0.0417 - In this case, we can reject the null hypothesis in favor of the alternative hypothesis that the true mean of the group is not equal to 1500. It is not likely that the observed relationship is due to chance - Lot 3 seems to produce suspension coils that have lower PSI weights on average. It would be worthwhile to examine manufacturing processes at this lot to determine how it deviates from the normal standards in producing coils.  

## Study Design: MechaCar vs Competition

The previous analysis has helped us gain insight into variables affecting the MechaCar prototype's performance using data internal to AutosRUs. How might this prototype compare to car performance of similar models from other companies? Earlier in this analysis, we examined vehicle performance as measured by miles per gallon tests. Fuel efficiency of a car is of particular interest for customers who are concerned with rising gas prices or environmental impact. In order to quantify how the MechaCar performs agains its competition in its fuel efficiency performance, we can propose a new statistical study design.

**Metric being tested**
The proposed analysis would review the average miles per gallon for the competitive vehicle types.

**Hypotheses to test** (source: ANOVA Test section of module 16: https://courses.bootcampspot.com/courses/2566/pages/16-dot-6-5-use-the-anova-test?module_item_id=818854)
Null hypothesis: The mean mpg of all companies are equal
Alternative hypothesis: At least one of the means is different from other groups

**What statistical test would you use to test the hypothesis?**
While we could utilize a two-sample t-test similar to the structure above to compare mean mpgs across groups, it is likely that we would want to compare the MechaCar to more than one other company's model in order to fully understand the landscape of multiple competitors. To do so, we could execute a one-way ANOVA to test the means of the single dependent variable (mpg) across a single independent variable with multiple groups (competitor models). The dependent variable is numerical and continuous, and the independent variable is categorical, which fits the requirements for this type of model.

**What data is needed to run the statistical test?**
To complete the ANOVA test, we would require a data source that contains fuel efficiency metrics and the names/companies of the various models of vehicles.    
