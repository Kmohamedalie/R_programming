#*************************************************************#
#                    tidyr package                            #
#*************************************************************#
# function: gather(), spread(), unite(), separate()

library(tidyverse)


# ******** gather: function ******** 
# billboard 2000 by Hadley Wickham
billboard <- as_tibble(read.csv('billboard.csv'))
billboard %>% gather(x1st.week:x76th.week, key = "week", value = "rank", na.rm = T) %>%
              arrange(artist.inverted)


# tuberculosis WHO data set
tb <- as_tibble(read.csv('tb.csv'))
tb.gathered <- tb %>% gather(m.014:f.65, key = "column", value = "cases", na.rm = T) %>%
                      arrange(country)
tb.gathered


# ******** separate: function ******** 
tb.separated <- tb.gathered %>% separate(column, into = c("sex", "age"))
tb.separated


# ******** spread: function ******** 
weather <- as_tibble(read.csv('weather.csv'))
weather.spread <- spread(weather, key = element, value = value)
weather.spread