#******************************************************************#
#                           List in R                              #
#******************************************************************#
# some features of lists include
# recursive vectors, group R objects into a set
# can store other lists, one-dimensional
# one-dimensional, no inherent structure
# can store elements of different basic types
# useful for hierarchical structure and tree like elements

my.book <- list(Name = "1984", Author = "George Orwell", Published = 1949,
                Contents = list(PartOne = c(1:8), 
                                PartTwo = c(1:10), 
                                PartThree = c(1:6),
                                Appendix = "Newspeak"))
print(typeof(my.book)) # data Type
str(my.book) # structure
#print(my.book) # my.book variable

# slicing the list
print(my.book[[4]][[1]][3]) # last value in the list