# coercion rules in R
# a single character can for all other dataTypes to change 
salary <- c(3000,NA,NA,NA,NA,4000,3000,5000,1000,5000)
print(typeof(salary))

salary <- c("3000",NA,NA,NA,NA,4000,3000,5000,1000,5000)
print(typeof(salary))

coer <- c(TRUE, 3, NA, "False")
print(typeof(coer))

# exercise 
yearly_bonus <- c(T, T, T, F, T, T, T, T, T, T)
print(typeof(yearly_bonus))

coerce.check(coer)


