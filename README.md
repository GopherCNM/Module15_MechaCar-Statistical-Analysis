# Statistics and R

## Linear Regression to Predict MPG  

- Based on the p-values of the coefficients in the summary, we see that vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset. The intercept was also significant. Vehicle weight was close, at 0.0776, but doesn’t quite meet the common threshold of 0.05.  
- The p-value of the linear model is 5.35 x 10<sup>-11</sup>, which is much smaller than 0.05 significance level. This provides sufficient evidence to reject our null hypothesis, meaning that the slope of our linear model is not zero.  
- The multiple R-squared value is 0.7149, which means about 71% of the dependent variable (mpg) variability is determined by this linear model and the 5 independent variables.  
![Deliverable1](/Screenshots/Deliverable1.PNG)  

## Summary Statistics on Suspension Coils  

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. In total, this standard is met, with a variance of 62.29 (total_summary table below). At a lot level, we see that Lot 1 and Lot 2 fall well below the threshold of 100, at 0.98 and 7.47 respectively. However, Lot 3 exceeds the variance requirement, at 170.29 PSI (lot_summary table below).  

**total_summary**  
![Total Summary](/Screenshots/Deliv2_total-summary.PNG)  
**lot_summary**  
![Lot Summary](/Screenshots/Deliv2_lot-summary.PNG)  

## T-Tests on Suspension Coils  

The p-values are as follows, when comparing each of these samples to that of a population with a mean of 1,500 PSI:  

 - All lots: 0.06028  
- Lot 1: 1  
- Lot 2: 0.6072  
- Lot 3: 0.04168  

Assuming our significance level was the common 0.05, the samples containing all lots, lot 1, and lot 2 all exceed the significance level. For these, there isn’t sufficient evidence to reject the null hypothesis, indicating that the means of these samples are statistically similar to the population. For lot 3, however, the p-value is less than 0.05, meaning there is evidence to reject the null hypothesis, and that there is a statistical difference between the sample mean and the population mean.  
![All Lots](/Screenshots/Deliv3_all-lots-t-test.PNG) ![Lot1](/Screenshots/Deliv3_lot1-t-test.PNG)  
![Lot2](/Screenshots/Deliv3_lot2-t-test.PNG) ![Lot3](/Screenshots/Deliv3_lot3-t-test.PNG)  

## Study Design: MechaCar vs Competition  
To understand how MechaCar compares to the competition, I would recommend using the **analysis of variance (ANOVA)** test. As mentioned in the module, this is effective when dealing with large real-world numerical data, when comparing the means across more than 2 samples or groups. I would use industry reporting to select the most important factors to consumers, likely including: price, highway & city fuel efficiency, safety ratings, 0-to-60 times, and braking distance. Using ANOVA, I would seek to answer this question for each of these factors: is there any statistical difference between MechaCar and its competition for each of the factors? When selecting datasets for the statistical tests, it would be important to find data for comparable years and car classes for MechaCar and its competition. After running the ANOVA tests and checking p-values, we could evaluate whether to accept or reject the null hypothesis. In this case, the null hypothesis is that there is no significant difference between the means of these factors for MechaCar and those of its competitors. Thus, any p-values less than 0.05 would indicate that there’s statistical evidence to reject the null hypothesis and accept that there’s a significant difference between MechaCar and its competition. Any p-values greater than 0.05 would help to support the null hypothesis.
