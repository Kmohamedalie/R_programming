#********************************************************#
#                       two means                        #
#********************************************************#

# comparing two means

library(pastecs)
library(psych)

magn <- read.csv("dependent-samples.csv")
#print(head(magn))

# describe function
print(describe(magn))

# summary statistics
# paired = TRUE dependent samples, one-tailed test = l
dep.t.test <- t.test(magn$Before, magn$After, paired = TRUE, alternative = "l")
print(dep.t.test)

# sanity check with stat.desc
print(stat.desc(magn))