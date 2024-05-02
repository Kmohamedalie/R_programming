#**********************************************************#
#                         Z-test                           #
#**********************************************************#

# glass door data scientist salary which is said to be 
# mean = $113,000, alpha = 5% or confidence interval of 95%

ds_salary <- read.csv("ztest-a.csv")
print(head(ds_salary))

# summary statistics
print(summary(ds_salary))

# z.test
z.test <- function(a, mu, sd){
  zeta = (mean(a) - mu) / (sd/sqrt(length(a)))
  return(zeta)
}

# input the parameter values
print(abs(z.test(a = ds_salary$salary, mu = 113000, sd = 15000)))

# the p-value
