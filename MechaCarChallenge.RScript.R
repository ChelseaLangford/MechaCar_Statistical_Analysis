library(dplyr)

mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)) #generate summary statistics

suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)


total_summary <- suspension %>% summarize(mean(PSI), median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')