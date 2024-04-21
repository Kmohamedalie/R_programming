#******************************************************************************#
#                       creating data frames in R                              #
#******************************************************************************#

# Note: it's hard that you'll ever have to create a data frame throughout your
# lifetime because most of it will be coming from ERP systems

title <- c("Star Wars", "The Empire Strikes Back", "Return of the Jei", 
           "The Phantom Menace", "Attack of the Clones", "Revenge of the sith",
           "The Force Awakens")
year <- c(1977, 1980, 1983, 1999, 2002, 2005, 2015)
length.min <- c(121, 124, 133, 133, 142, 140, 135)
box.office.mil <- c(787, 534, 572, 1027, 657, 849, 2059)

# creating data frame and assigning the variable
my.data <- data.frame(title, year, length.min, box.office.mil)
print(my.data)

# renaming the data frame
names(my.data) <- c("Movie Title", "Release Year", "Length in Minutes", "Box office")
print(my.data)

# rename by assigning during creation
my.data <- data.frame(Title = title, Year = year, Length = length.min)
print(my.data)

# check the structure and type
str(my.data)
print(typeof(my.data))