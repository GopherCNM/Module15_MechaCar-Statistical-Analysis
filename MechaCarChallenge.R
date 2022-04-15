# Deliverable 1: Linear Regression to Predict MPG
library(dplyr) #load dplyr package
MechaCarDF <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import and read csv file
head(MechaCarDF) #review first data rows
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarDF) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarDF)) #generate summary statistics

# Deliverable 2: Create Visualizations for the Trip Analysis
SuspensionCoils <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import and read csv file
head(SuspensionCoils) #review first data rows
total_summary <- SuspensionCoils %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep") #create stats summary table for PSI data
total_summary
lot_summary <- SuspensionCoils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep") #create stats summary table by lot for PSI data
lot_summary

# Deliverable 3: T-Tests on Suspension Coils
t.test(SuspensionCoils$PSI,mu=1500) #compare all lots versus population mean
t.test(subset(SuspensionCoils,Manufacturing_Lot == "Lot1")$PSI,mu=1500) #compare Lot1 versus population mean
t.test(subset(SuspensionCoils,Manufacturing_Lot == "Lot2")$PSI,mu=1500) #compare Lot2 versus population mean
t.test(subset(SuspensionCoils,Manufacturing_Lot == "Lot3")$PSI,mu=1500) #compare Lot3 versus population mean
