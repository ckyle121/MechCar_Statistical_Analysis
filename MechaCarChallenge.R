#Deliverable One
#add library to R
library(dplyr)
library(tidyverse)


#read in csv file MechaCar_mpg
mpg_df <- read.csv(file='C:\\Users\\carol\\OneDrive\\Documents\\GitHub\\AutosRUS\\MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#create linear model
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)

#Determine p-value and r squared
summary(model)

#Deliverable Two 
#read in csv file Suspension_Coil
suspension_coil <- read.csv(file='C:\\Users\\carol\\OneDrive\\Documents\\GitHub\\AutosRUS\\suspension_coil.csv',check.names=F,stringsAsFactors = F)

#Create a total summary table to get the mean, median, variance, and standard deviation of the suspension coil's PSI column 
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
View(total_summary)

#Create a lot summary dataframe to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#Deliverable Three
#Compute a T-Test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(suspension_coil$PSI,mu =1500)

#Compute a T-Test to determine if the PSI across manufacturing lot one is statistically different from the population mean of 1,500 pounds per square inch
Lot1_PSI <- subset(suspension_coil, Manufacturing_Lot == "Lot1")
t.test(Lot1_PSI$PSI, mu=mean(suspension_coil$PSI))

#Compute a T-Test to determine if the PSI across manufacturing lot two is statistically different from the population mean of 1,500 pounds per square inch
Lot2_PSI <- subset(suspension_coil, Manufacturing_Lot == "Lot2")
t.test(Lot2_PSI$PSI, mu=mean(suspension_coil$PSI))

#Compute a T-Test to determine if the PSI across manufacturing lot three is statistically different from the population mean of 1,500 pounds per square inch
Lot3_PSI <- subset(suspension_coil, Manufacturing_Lot == "Lot3")
t.test(Lot3_PSI$PSI, mu=mean(suspension_coil$PSI))
