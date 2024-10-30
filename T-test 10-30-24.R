# t-test measurement Chowdhury 10-25-24
# create 2 dummy groups call x and y, using function rnorm()
x = rnorm(50)
y = rnorm(100)
# create a sequence of 100 points between -4.5 and +4.5
pts = seq(-4.5,4.5,length=100)
# create a density plot for 100 points between -4.5 and +4.5
plot(pts,dt(pts,df=9),col='red',type='l')
# X axis label "points", Y axis label "Density"
plot(pts,dt(pts,df=9),col='red',type='l', xlab="Points", ylab="Density")
lines(density(x), col='green')
lines(density(x), col='green')
lines(density(y), col='blue')
ttest = t.test(x,y)
ttest


 
 Welch Two Sample t-test

data:  x and y
t = -0.262, df = 93.503, p-value = 0.7939
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.4140164  0.3174955
sample estimates:
  mean of x   mean of y 
-0.12843136 -0.08017091 

