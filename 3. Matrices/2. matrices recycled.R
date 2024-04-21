# matrices recycled
gdp <- matrix(c(47.9, 41.2, 41.9, 54.6, 56.2, 57.5, 1.6, 1.6),
              nrow=3, byrow = TRUE, # layout
              dimnames = list(c("de", "usa", "ind"), # row names
                              c("2014", "2015", "2016"))) # column names

print(gdp)

# subsetting matrices
print(gdp[1,1]==47.9)
print(gdp[1,3]==41.9)

# slicing a matrix in R
print(gdp[1]==47.9)
print(gdp[7]==41.9)
