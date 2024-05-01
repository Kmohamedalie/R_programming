#*************************************************************#
#                    Bar Chart with ggplot2                    #
#*************************************************************#
library(tidyverse)
library(ggplot2)

# Create a bar chart representation of the number of employees in the 
# different positions in the employees data by gender.

emp <- read.csv("employeeData.csv", stringsAsFactors = F, header = TRUE)
emp <- as_tibble(emp)
emp$gender <- as.factor(emp$gender)
emp$title <- as.factor(emp$title)

# bar plot
bar <- ggplot(df, aes(x = gender, fill = title)) +
  geom_bar() + 
  theme_light() +
  labs(y = "Employee count", x = "Job position",
       title = "Job positions by gender") +
  facet_wrap(gender~title)
print(bar)