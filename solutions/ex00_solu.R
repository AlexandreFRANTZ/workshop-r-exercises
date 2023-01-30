# First store two variables "Hello" and "World" named respectively "first" and "second" in an array

tab <- c("first" = "Hello", "second" = "World")

# Then, you want to print the array, its type and the elements types like this:
# $   first  second
# $ "Hello" "World"
# $ [1] "character"
# $ [1] "character"
# $ [1] "character"

print(tab)
print(typeof(tab))
print(typeof(tab[1]))
print(typeof(tab["second"]))

# Now, you will use your array to print an entire sentence by concatenating (don't forget the space):
# $ [1] "Hello World"

print(paste(tab["first"], tab[2], sep=" "))