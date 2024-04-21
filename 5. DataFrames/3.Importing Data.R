#****************************************************************************#
#                       Importing data in R                                  #
#****************************************************************************#
# show files available
list.files()

# comma separated files
# read file method 1
?read.table
my.pok.csv1 <- read.table("pokRdex_comma.csv",
                          sep = ',',
                          header = TRUE,
                          stringsAsFactors = FALSE)
print(head(my.pok.csv1))


# read file method 2
my.pok.csv2 <- read.csv("pokRdex_comma.csv", stringsAsFactors = FALSE)
print(head(my.pok.csv2))


# tab separated files
?read.delim
my.pok.tab1 <- read.delim("pokRdex_tab.txt",
                          sep = '\t',
                          header = TRUE,
                          stringsAsFactors = FALSE)
print(head(my.pok.tab1))