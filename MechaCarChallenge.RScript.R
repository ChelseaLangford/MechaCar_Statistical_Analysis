library(dplyr)

mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)) #generate summary statistics

suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)


total_summary <- suspension %>% summarize(mean(PSI), median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

t.test(suspension$PSI, mu=1500) #t-test for all manufacturing lots

Lot1_sample = subset(suspension, Manufacturing_Lot == "Lot1") #t-test for Lot 1
t.test(Lot1_sample$PSI, mu=1500)

Lot2_sample = subset(suspension, Manufacturing_Lot == "Lot2") #t-test for Lot 2
t.test(Lot2_sample$PSI, mu=1500)

Lot3_sample = subset(suspension, Manufacturing_Lot == "Lot3") #t-test for Lot 3
t.test(Lot3_sample$PSI, mu=1500)
