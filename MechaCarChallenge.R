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