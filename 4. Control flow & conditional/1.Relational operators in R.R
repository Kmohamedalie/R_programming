#******************************************************#
#               Relational Operator in R               #
#******************************************************#

# equality "=="
print( 3==3)
print( 3=="3")
print( "cat"=="Cat")
print( "dog"=="Dog")
print( TRUE==1)
print( FALSE==0)

# equality "!="
print( 3!=3)
print( 3!="3")
print( "cat"!="Cat")
print( "dog"!="Dog")
print( TRUE!=1)
print( FALSE!=0)
print( TRUE!=0)
print( FALSE!=1)

# ">, >=, <=, <"
Sys.setenv(`_R_USE_PIPEBIND_` = TRUE)

print(3 > 3)
print(3 > "3")
print("cat" < "Cat")
print("Dog" < "Cat")
print(TRUE <= 1)
print(FALSE >= 0)