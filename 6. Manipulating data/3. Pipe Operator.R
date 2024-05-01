#*************************************************************#
#                    pipe operator                            #
#*************************************************************#
# Pipe operator: %>% 

library(gapminder)
library(tidyverse)

view(gapminder)

sum(is.na(gapminder))

Result <- gapminder %>% group_by(continent)  %>%
                    summarise(avg.gdpPercap = mean(gdpPercap, na.rm = T))  %>%
                    arrange(desc(avg.gdpPercap))
print(Result)