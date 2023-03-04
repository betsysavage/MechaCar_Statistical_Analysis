#Import libraries

library(tidyverse)
library(dplyr)

#Read csv of MechaCar data
MechaCar_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Create linear regression model with all columns using mpg as the dependent variable
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg_df)

#Create summary table
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg_df))

#Read csv of Suspension Coil data
Suspension_Coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Get summary statistics of PSI values for all lots
total_summary <- summarize(Suspension_Coil_df,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Get summary statistics of PSI values by manufacturing lot
lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')

#Complete t test to assess whether PSI is different from true mean
t.test(Suspension_Coil_df$PSI,mu=1500)

#Complete t test on data from each manufacturing lot to assess whether PSI of each lot is different from the true mean
t.test(subset(Suspension_Coil_df,Manufacturing_Lot=='Lot1')$PSI,mu=1500)
t.test(subset(Suspension_Coil_df,Manufacturing_Lot=='Lot2')$PSI,mu=1500)
t.test(subset(Suspension_Coil_df,Manufacturing_Lot=='Lot3')$PSI,mu=1500)

