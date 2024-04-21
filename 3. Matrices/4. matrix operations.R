#*******************************************************************************
#                                Matrix operations                             #
#*******************************************************************************
b.office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
matrix.mat <- matrix(b.office, nrow = 3, byrow = T,
                     dimnames = list(c("The Matrix", "Reloaded", "Revolutions"),
                                     c("US", "Worldwide")))
print(matrix.mat)
# some data Science----------------------
# sum box office franchise in US and worldwide
print("using colSums function: ")
print(colSums(matrix.mat))

# sum box office franchise for each movies 
print("using rowSums function: ")
print(rowSums(matrix.mat))

# mean of box office franchise for each movies 
print("using rowMeans function: ")
print(rowMeans(matrix.mat))

# mean of box office franchise for US and worldwide 
print("using colmean function: ")
print(colMeans(matrix.mat))

# bind the result of the column mean to the matrix
average <- colMeans(matrix.mat)
total <- colSums(matrix.mat)
print("row binding , orginal matrix.mat, average, total:")
print(rbind(matrix.mat,average,total))

# 