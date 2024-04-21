#***************************************************#
#                     Loops in R                    #
#***************************************************#

#**************** For ********************
num <- seq(2:10)
print(num)


# print iteration
for(n in num){
  print(n)
}

# words
title <- c("Catch", "Me", "If", "You", "Can")
for(word in title){
  print(word)
}


#****************** While *****************
# counter
counter = 0
while(counter < 10){
  print(counter)
  counter = counter + 1
}


#****************** repeat *****************
repeat{
  print(paste("Your value equals", counter))
  counter <- counter + 1
  if(counter >= 0){
    print("N is now either 0 or a positive number")
    print("The loop will be broken")
    break
  }
}