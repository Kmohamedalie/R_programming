#************************************************************#
#                          Factor in R                       #
#************************************************************#
?levels

marital.status <- c("Married", "Married", "Single", "Married", "Divorced",
                    "Widowed", "Divorced")

# structure of the data
str(marital.status)

# convert to factor
marital.factor <- factor(marital.status)
print(marital.factor)

# typeof
typeof(marital.factor)

# structure of the data
str(marital.factor)

# you can reset the level from default
new.factor <- factor(marital.status, 
                     levels = c("Single", "Married", "Divorced", "Widowed"))
# now check the structure
str(new.factor)

# rename the levels
levels(new.factor) <- c("s", "m", "d", "w")
str(new.factor)

# set labels
new.factor <- factor(marital.status, 
                     levels = c("Single", "Married", "Divorced", "Widowed"),
                     labels = c("Sin", "Mar", "Div", "Wid"))
str(new.factor)

# setting an order we want the levels
ordered.factor <- factor(marital.status, ordered = TRUE,
                         levels = c("Single", "Married", "Divorced", "Widowed"))
str(ordered.factor)