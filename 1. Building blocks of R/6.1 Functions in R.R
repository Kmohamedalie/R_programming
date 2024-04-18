# ------------- Building functions in R ------------- 
deck <- c("Duke", "Assassin", "Captain", "Ambassdor", "Contessa")
#print(deck)

result1 <- sample(deck, size = 3) # without replacement
#print(result1)
result2 <- sample(deck, size = 3, replace=T) # with replacement
#print(result2)

# custom made function for simulating the card game
draw <- function(deck){
  result1 <- sample(deck, size = 3) # without replacement
  return(result1)
}

print(draw(deck))