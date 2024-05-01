#*************************************************************#
#                    Bar Chart with ggplot2                    #
#*************************************************************#
library(tidyverse)
library(ggplot2)

# Bar chart: suitable for single categorical variable

df <- read.csv("titanic.csv", stringsAsFactors = F)
df <- as.tibble(df)

df$Survived <- as.factor(df$Survived)
df$Pclass <- as.factor(df$Pclass)
df$Sex <- as.factor(df$Sex)
df$Embarked <- as.factor(df$Embarked)
print(head(df))

# bar plot
bar <- ggplot(df, aes(x = Sex, fill = Survived)) +
              geom_bar() + 
              theme_light() +
              labs(y = "Passenger Count", 
                   title = "Survival Rate on the Titanic") +
              facet_wrap(Sex~Pclass)
print(bar)


#hist plot
hist <- ggplot(df, aes(x = Age, fill = Survived)) +
  geom_histogram(binwidth = 5, color = "white") +
  theme_light() +
  labs(y = "Number of Passengers",
      x = "Age", title = "Age Distribution on the Titanic")
  facet_wrap(Sex~Pclass)
print(hist)