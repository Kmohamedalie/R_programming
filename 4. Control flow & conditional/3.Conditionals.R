#***************************************************#
#                Conditionals Operator in R         #
#***************************************************#

var  <- 3
var2 <- 3

# check the statement
if (var > var2){
  print(paste(var, "is greater than", var2))
} else if(var < var2) {
  print(paste(var, "is not greater than", var2))
}else{
  if ((4!=3) & (4 > 3)){
    print(paste('(4!=3) & (4 > 3): ',(4!=3) & (4 > 3)))
  }
  print(paste(var, "are equal", var2))
}