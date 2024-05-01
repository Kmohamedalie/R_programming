#*************************************************************#
#           Box and whisker plot with ggplot2                 #
#*************************************************************#
library(tidyverse)
library(ggplot2)

df <- read.csv("titanic.csv", stringsAsFactors = F)
df <- as.tibble(df)

df$Survived <- as.factor(df$Survived)
df$Pclass <- as.factor(df$Pclass)
df$Sex <- as.factor(df$Sex)
df$Embarked <- as.factor(df$Embarked)
print(head(df))


my.box <- ggplot(df, aes(x = Survived, y = Age)) + 
          geom_boxplot(outlier.colour = "red", outlier.shape = 4) + # show outliers
          geom_jitter(width=0.2, aes(color=Sex)) + # add some distribution point
          labs(title = "Survival Rate on the Titanic Based on Age and Gender") + 
          theme_light() +
          coord_flip()
print(my.box)