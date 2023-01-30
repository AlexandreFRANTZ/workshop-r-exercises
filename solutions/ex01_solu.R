# First create an array containing an list of 4 fruits and an list of 4 alcohols

fruits <- c("Apple", "Pineapple", "Orange", "Cherry")
alcohols <- c("Manzana", "Malibu", "Vodka", "Tequila")

# Then add programmatically the Lytchee to the list of fruits and the Get27 to the list of alcohols

fruits <- c(fruits, "Lychee")
alcohols <- c(alcohols, "Get27")

# Now you will create the perfect cocktails by assigning the list of fruits and the list of alcohols in a list of cocktails
# Here we want a list of lists, where each index i of the cocktails list is a list of the index i of the fruits and alcohol lists

cocktails <- mapply(c, fruits, alcohols, SIMPLIFY = FALSE)

# Now you have the great list, print it perfectly
# Here is the way we want the recipe to be written:
# "Add 3 cl of alcohol in 25 cl of fruit juice."
# Replace the "alcohol" and "fruit" words by the answer

for (i in cocktails) {
  print(paste0("Add 3 cl of ", i[2], " in 25 cl of ", i[1], " juice."))
}