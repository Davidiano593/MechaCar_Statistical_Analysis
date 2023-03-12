#MechaCar Statistical Analysis

#Deliverable 1
#dplyr

library(dplyr)

#read file

MechaCar <- read.csv(file='Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

#linear regression

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

#p Value, R Value

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

#Deliverable 2

#Read file

Suspension <- read.csv(file='Resources/Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

#Summary

total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI))

#Lot Summary

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI))

#Deliverable 3

## T-test 
t.test(Suspension$PSI, mu=1500)

## individual lots

t.test(subset(Suspension, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension, Manufacturing_Lot=="Lot3")$PSI, mu=1500)