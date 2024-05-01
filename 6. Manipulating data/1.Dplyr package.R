#*********************************************************************************#
#                    Data transformation Dplyr Package                            #
#*********************************************************************************#
# Dplyr functions: filter, select, mutate, transmute, arrange, summarize, group_by
#                 sample_n, sample_frac

library(gapminder)
library(tidyverse)

view(gapminder)

sum(is.na(gapminder))

# **** filter function ******
filter(gapminder, year > 1992, continent == "Asia")

# | or 
filter(gapminder, year > 1992, continent == "Asia" | continent=="Europe")


# select function 
select(gapminder, country, continent, year, lifeExp, pop, gdpPercap)
select(gapminder, country:gdpPercap) 
select(gapminder, ends_with("p")) 
select(gapminder,  country, continent, everything()) 

# mutate function : to create new variable from existing variables
mutate(gapminder, gdpPercapPerYear = paste0(gapminder$gdpPercap,":",gapminder$year))

# transmute function : to create new variable from existing variables and display newly created variable
transmute(gapminder, gdpPercapPerYear = paste0(gapminder$gdpPercap,":",gapminder$year))

# arrange function : order the data in ascending or descending order
gdpPercapPerYear <- transmute(gapminder, gdpPercapPerYear = paste0(gapminder$gdpPercap,":",gapminder$year))
arrange(gdpPercapPerYear, desc(gdpPercapPerYear))

# summarize/summarise function
summarize(gapminder, avg.gdpPercap = mean(gdpPercap, na.rm = T))

# group by and summarize function 
gapminder.continent <- group_by(gapminder, continent)
avg.gdpPercap <- summarise(gapminder.continent, avg.gdpPercap = mean(gdpPercap, na.rm = T))
arrange(avg.gdpPercap, desc(avg.gdpPercap))

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
