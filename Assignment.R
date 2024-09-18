
> library (ggpubr)
Loading required package: ggplot2

> read (mtcars)

> result3 <-cor.test(my_data$gear, my_data$wt, method="pearson")
> result3
Pearson's product-moment correlation

data:  my_data$gear and my_data$wt
t = -3.9332, df = 30, p-value = 0.0004587
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.7744638 -0.2944887
sample estimates:
      cor 
-0.583287 