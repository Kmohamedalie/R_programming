#*****************************************
#        Matrix arithmetic               #
#*****************************************
b.office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
matrix.mat <- matrix(b.office, nrow = 3, byrow = T,
                     dimnames = list(c("The Matrix", "Reloaded", "Revolutions"),
                                     c("US", "Worldwide")))

print(matrix.mat)

matrix.scaled <- matrix.mat/1000
print("Scaled matrix:")
print(matrix.scaled)

avg.margin <- matrix.mat - 121
print("avg matrix: ")
print(avg.margin)

budget <- matrix(c(63, 150, 150), nrow = 3, ncol = 2)
print("budget: ")
print(budget)

margin <- matrix.mat - budget
print("margin: ")
print(margin)

v <- matrix(1:6, nrow = 3)
print(v)

# multiply v by matrix.mat
print("matrix multiplication: ")
print(matrix.mat * v)

# set.seed for result replication
set.seed(45)
# example2
result <- matrix(runif(9,2,10),3,
                 dimnames = list(c("x", "y", "z"),
                                 c("uno", "dos", "tres")))
print("random uniform result: ")
print(result)


# example2
result1 <- matrix(rnorm(9,2,10),3,
                  dimnames = list(c("x", "y", "z"),
                                  c("uno", "dos", "tres")))
print("random normal result1: ")
print(result1)