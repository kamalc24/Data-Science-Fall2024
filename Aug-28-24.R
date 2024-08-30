print ("This is data science class")

citation()
#Author: Chowdhury, Date: August 26 2024, Purpose: Calculate the correlation test.
if(!require(devtools))
my_data <-mtcars
head(my_data)
#Create a hypothesis
#I want to compare the wight of the car with the mpg, more car wight, 
less is the mpg travel by car
result <-cor.test(my_data$mpg, my_data$wt, method="pearson")
 Pearson's product-moment correlation

data:  my_data$mpg and my_data$wt
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 