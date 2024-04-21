# creating a matrix in R
# some useful functions for creating a matrix
# matrix(), rbind(), cbind()

mat <- matrix(1:12, nrow=3)
print(mat)

mat2 <- matrix(1:12, ncol=4) # 4 rows
print(mat2)

mat3 <- matrix(1:12, ncol=4, byrow = TRUE)
print(mat3)

usa <- c(1.3, 1.5, 1.2, 1.4, 1.5)
de <- c(0.2, 0.4, 0.7, 0.8, 0.8)

ngo <- cbind(usa,de)
print(ngo)

ngo2 <- rbind(usa,de)
print(ngo2)

# RECAP
# building a matrix--------------------------
# matrix(data = , nrow = , ncol = , byrow = )

# naming----------------
# rownames(), colnames()