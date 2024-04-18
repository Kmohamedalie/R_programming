# function in R
# inbuilt
print(round(2,4271))
print(mean(1:10))

a <- 30:35
print(round(mean(a)))

b <- mean(a)
c <- round(b)
 
print(b)
print(c)

# exercise 
print("\n")
years_of_experience <- c(8, 10, 10, 1, 10, 10, 8, 12, 1, 12)
print(paste0("sum:",sum(years_of_experience))) # sum of years_of_experience
print(paste0("mean:",mean(years_of_experience))) # mean of years_of_experience
print(paste0("median:",median(years_of_experience))) # median of years_of_experience
print(paste0("length:",length(years_of_experience))) # length
print(paste0("standard deviation:",sd(years_of_experience))) # standard deviation
print(paste0("round sd:",round(sd(years_of_experience)))) # standard deviation round 
 
# functions and arguments
print(args(round)) # round
print(round(2.4371, digits = 2))
print(round(2, 2.4371))

print(args(sample)) # round
print(args(median)) # round
print(paste0("median:",median(years_of_experience, na.rm = TRUE))) 