#******************************************************#
#                logical Operator in R                 #
#******************************************************#
# and "&"
print("and '&':")
print(1 & 1)
print(1 & 0)
print(0 & 0)

# or "|"
print("or '|':")
print(1 | 1)
print(1 | 0)
print(0 | 0)

# and "&"
print("not '!' , and '&':")
print(!(1 & 1))
print(!(1 & 0))
print(!(0 & 0))

# not "!"
print("not '!' and or '|':")
print(!(1 | 1))
print(!(1 | 0))
print(!(0 | 0))

# vectors and logical operators in R
v <- c(1, 3, 5, 7)
w <- c(1, 2, 3, 4)
print(3 == v)
print(3 == w)

print(12 > c(11,11,13,14))
print("catch"==c("catch", 22, "is", "fantastic"))
print(c(11, 12,13) >= c(10, 12, 14))

# | , || , & and &&