library(dplyr)

# Deliverable 1
cars <- read.csv(file='MechaCar_mpg.csv')
head(cars)
mpg_model = lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = cars)
summary(mpg_model)

# Deliverable 2
coils <- read.csv(file='Suspension_Coil.csv')
head(coils)
total_summary = coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI))
total_summary
lot_summary = coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI))
lot_summary

# Deliverable 3
# Compare sample vs population means
total_ttest = t.test(coils$PSI,mu=1500)
# Compare Manufacturing lot samples to population mean
lot1_ttest = t.test(coils[coils$Manufacturing_Lot == "Lot1",]$PSI, mu=1500)
lot2_ttest = t.test(coils[coils$Manufacturing_Lot == "Lot2",]$PSI, mu=1500)
lot3_ttest = t.test(coils[coils$Manufacturing_Lot == "Lot3",]$PSI, mu=1500)

# Total sample vs population means p-value:
total_ttest[3]
# Lot 1 sample vs population means p-value:
lot1_ttest[3]
# Lot 2 sample vs population means p-value:
lot2_ttest[3]
# Lot 3 sample vs population means p-value:
lot3_ttest[3]
