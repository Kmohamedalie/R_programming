#****************************************************************************#
#                       Exporting data in R                                  #
#****************************************************************************#

# use the write.csv() function to export data
write.csv(mtcars, file="carData.csv", row.names = FALSE)

# check for availability using 
list.files()