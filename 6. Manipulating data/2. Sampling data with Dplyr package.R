#*********************************************************************************#
#                    Sampling data with Dplyer package                            #
#*********************************************************************************#
# Dplyr functions:sample_n, sample_frac

library(gapminder)
library(tidyverse)

view(gapminder)

sum(is.na(gapminder))


# sampling without replacement
# sample_n()
sample_n(gapminder, 10)

# sample_frac()
sample_frac(gapminder, 0.1)

# sampling without replacement
# sample_n(data, replace = True)
sample_n(gapminder, 10, replace = TRUE)

# sample_frac(data, replace = True)
sample_frac(gapminder, 0.1, replace = TRUE)