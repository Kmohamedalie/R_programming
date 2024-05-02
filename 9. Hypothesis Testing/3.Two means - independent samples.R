#********************************************************#
#             two means dependent samples                #
#********************************************************#

# comparing two means independent sample
library(tidyverse)
library(pastecs)
library(psych)

magNeng <- read.csv("independent-samples.csv")
grades <- gather(magNeng, Engineering, Management,
                 key = "course",
                 value = "grades")
print(head(grades))

# the test
ind.t.test <- t.test(grades~course, data = grades, mu = -4)
print(ind.t.test)