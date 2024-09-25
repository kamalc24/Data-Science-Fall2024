# Author: Chowdhury, Date: September 20, 2024 Objectives: to perform ANAVA test
# Hypothesis: Treatment A is most effective on poison type 1. Expecting significant differences 
in treatment and poison.This is my alternative hypothesis
# Null hypothesis: There is no significant differences i treatment A 
and other treatment types. We always test null hypothesis
# Where can your data be stored?
# Local drive (external drive/USB, Computer hard drive, server, cluster); 
Cloud storage (Amazon, cloud,Google cloud, Apple icloud); 
HTML (Github public repository which is free, no permission needed).
# Import the dummy data from Github public repositoryin our R program
 
library(dplyr)
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 


# Reading the CSV file in R
df<-read.csv(PATH)
#Printing df
df
# print first 6 raws of data only
head(df)
df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE)) glimpse(df)
# Applying ANOVA test to columns time (dependent) and poison (independent)
anova_one_way <- aov(time~poison, data = df) summary(anova_one_way)

 Df Sum Sq Mean Sq F value   Pr(>F)    
poison       1 0.9316  0.9316   20.67 3.96e-05 ***
Residuals   46 2.0735  0.0451                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

