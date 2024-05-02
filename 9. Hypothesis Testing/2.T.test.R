#********************************************************#
#                          t.test                        #
#********************************************************#

# unknown variance with the t.test

library(psych)
rate <- read.csv("ttest-a.csv")
print(head(rate))

# customize t-test function
my_t_test <- function(a, hmean){
  t <- (mean(a) - hmean) / (sd(a)/sqrt(length(a)))
  return(t)
}

# run the test
print("The t-test:")
print(abs(my_t_test(rate$Open.rate, 0.4)))