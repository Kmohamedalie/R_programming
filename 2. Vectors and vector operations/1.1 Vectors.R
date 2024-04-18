# vectors in R
# sequence of elements that are of the same type
vec <- c(1,2,3)
vic <- c(11, 12, 13)

print(paste("vec + vic:",vec + vic))
print(paste("vec - vic:",vec - vic))

print(paste("vec*vic:",vec*vic))
print(paste("vec/vic:",vec/vic))

# stats
print(paste("Mean:",mean(vic)))
print(paste("Median:",median(vic)))
print(paste("sd:",sd(vic)))

print(paste("sum:",sum(vec)))
print(paste("prod:",prod(vec)))
print(paste("max:",max(vec)))
print(paste("min:",min(vec)))

# vector recycling
weight <- c(71, 67, 83, 67)
height <- c(1.75, 1.81, 1.78, 1.82, 1.97, 2.12, 1.75)

bmi <- weight/(height**2)
print("The bmi is:")
print(bmi)

# age
age <- c(23, 26, 24, 26)
attributes(age)
# naming a vector
names(age) <- c("George", "John", "Paul", "Ringo")
print(age)
# unnaming a vector
names(age) <- NULL
print(age)
