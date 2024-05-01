#*************************************************************#
#                    histogram with ggplot2                   #
#*************************************************************#
library(tidyverse)
library(ggplot2)

# Histogram: suitable for single continuous variable

df <- read.csv("titanic.csv", stringsAsFactors = F)
df <- as.tibble(df)

df$Survived <- as.factor(df$Survived)
df$Pclass <- as.factor(df$Pclass)
df$Sex <- as.factor(df$Sex)
df$Embarked <- as.factor(df$Embarked)
print(head(df))

# plot passengers age
hist <- ggplot(data = df, aes(x = Age))
hist_plot <- hist + geom_histogram(binwidth = 5, color = "darkslategray", 
                            fill = "darkslategray4", alpha = 0.5) +
             ggtitle("Age Distribution on the Titanic") + 
             labs(y = "Number of Passengers", x = "Age") +
             theme_minimal()
print(hist_plot)

