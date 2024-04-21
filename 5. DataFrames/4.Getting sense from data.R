#****************************************************************************#
#                       Getting sense from data                              #
#****************************************************************************#

myData <- read.csv("carData.csv", header=TRUE,sep = ",")

# see first/last 1-5rows
head(myData)
tail(myData)

# view the data
view(myData)

# functions
glimpse(myData)
str(myData)

# let see our row and column names
colnames(myData)
rownames(myData)

# number of rows and columns
nrow(myData)
ncol(myData)

# summary statistics of the data set
summary(myData)


