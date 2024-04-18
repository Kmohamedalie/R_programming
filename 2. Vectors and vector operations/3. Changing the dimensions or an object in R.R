# changing the dimension of an object
a <- seq(10,120, by=10)
print(a)
print(typeof(a))
print(class(a))

# dim
dim(a) <- c(3,4)
print(a)
print(typeof(a))
print(class(a))

# exercise
s <- seq(2,30,2)
print(s)

# dim
dim(s) <- c(1,3,5)
print(s)
