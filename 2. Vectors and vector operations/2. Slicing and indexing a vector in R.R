# Slicing and indexing a vector in R
n.deck <- c(6,7,8,9,10)
deck <- c("Duke", "Assassin","Captain","Ambassor", "Contessa")

# indexing
print(deck[4]) # positive
print(deck[-4]) # negative
print(deck[c(1,3,5)]) # multiple values

names(n.deck) <- deck
print(n.deck)

print(n.deck["Contessa"])
print(n.deck[c("Contessa", "Duke", "Ambassador")])
print(n.deck[3:5])

lv <- seq(10,100,by=10)
print(lv)

print(lv[-(4:7)])
print(lv[lv > 40])