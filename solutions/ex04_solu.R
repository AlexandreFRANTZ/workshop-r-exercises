# In order to familiarize with the language, we'll see how functions work
# First, create an addition function, taking a list as parameter and returning the sum of each node of the list
# As a good developer, you can do it recursively :)

add <- function(addList) {
  if (length(addList) == 0) return(0)
  else return(addList[1]+add(addList[-1]))
}

# Now do the same with the substraction and the multiplication

sub <- function(subList) {
  if (length(subList) == 0) return(0)
  else return(subList[1]-sub(subList[-1]))
}

mul <- function(mulList) {
  if (length(mulList) == 0) return(1)
  else return(mulList[1]*mul(mulList[-1]))
}

# Now, we'll create an array of 10 random numbers between 1 and 3, that will represent our operation manager
# Create also an array containing 10 arrays of 20 random numbers from -30 to 30 (outside a function)

operator <- sample(1:3, size=10, replace=TRUE)
toCalculate <- list()
for (i in 0:9) {
  toCalculate <- c(toCalculate, list(sample(-30:30, size=20, replace=TRUE)))
}

# Create now a for loop outside any function, looping on the operator list
# Inside this loop, you have 3 different cases:
# 1 -> print the result of the addition function using the correct index of the double array
# 2 -> print the result of the substraction function using the correct index of the double array
# 3 -> print the result of the multiplication function using the correct index of the double array
# Print it as followed:
# $ The operator Addition (1) of the list of index 0 has given 231.
# Don't forget to replace Addition by Substraction or Multiplication if necessary, replace the 0 between parentheses by the operator value, the index by the real index and the last number by the result

for (i in 1:length(operator)) {
  switch (operator[i],
    print(paste0("The operator Addition (", operator[i], ") of the list of index ", i, " has given ", add(toCalculate[[i]]), ".")),
    print(paste0("The operator Substraction (", operator[i], ") of the list of index ", i, " has given ", add(toCalculate[[i]]), ".")),
    print(paste0("The operator Multiplication (", operator[i], ") of the list of index ", i, " has given ", add(toCalculate[[i]]), "."))
  )
}