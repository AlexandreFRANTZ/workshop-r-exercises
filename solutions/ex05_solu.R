# Now we'll learn to use data frames. Data frames are really useful for data manipulation and data visualization.
# Using the 4 following arrays, create a data frame named "dtf". Since you created it, you can visualize it by writing View(dtf) in the console or clicking on it on the environment area on right

name <- c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas')
score <- c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19)
attempts <- c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1)
qualify <- c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')

dtf <- data.frame(name, score, attempts, qualify)

# Now, using this first data frame, create a second one containing only the name and score columns from the first data frame. Don't forget to rename them "name" and "score". (Use the first data frame, not the name and score arrays)

dtf2 <- data.frame("name"=dtf$name, "score"=dtf$score)

# It's time to print everything ! I am asking you to print different things:
# First, print dtf and dtf2 :
# $         name score attempts qualify
# $ 1  Anastasia  12.5        1     yes
# $ 2       Dima   9.0        3      no
# $ 3  Katherine  16.5        2     yes
# $ 4      James  12.0        3      no
# $ 5      Emily   9.0        2      no
# $ 6    Michael  20.0        3     yes
# $ 7    Matthew  14.5        1     yes
# $ 8      Laura  13.5        1      no
# $ 9      Kevin   8.0        2      no
# $ 10     Jonas  19.0        1     yes

# $         name score
# $ 1  Anastasia  12.5
# $ 2       Dima   9.0
# $ 3  Katherine  16.5
# $ 4      James  12.0
# $ 5      Emily   9.0
# $ 6    Michael  20.0
# $ 7    Matthew  14.5
# $ 8      Laura  13.5
# $ 9      Kevin   8.0
# $ 10     Jonas  19.0

# Then print the 2 first columns from dtf and the 2 first rows from the same data frame :
# $         name score
# $ 1  Anastasia  12.5
# $ 2       Dima   9.0
# $ 3  Katherine  16.5
# $ 4      James  12.0
# $ 5      Emily   9.0
# $ 6    Michael  20.0
# $ 7    Matthew  14.5
# $ 8      Laura  13.5
# $ 9      Kevin   8.0
# $ 10     Jonas  19.0

# $        name score attempts qualify
# $ 1 Anastasia  12.5        1     yes
# $ 2      Dima   9.0        3      no

# And finally, print the name and attempts, from the data frame, of Katherine and Emily (number 3 and 5 of the data frame) :
# $        name attempts
# $ 3 Katherine        2
# $ 5     Emily        2

print(dtf)
print(dtf2)
print(dtf[1:2])
print(dtf[1:2,])
print(dtf[c(3,5),c(1,3)])

# You can now add a column "country" to everyone (there is 10 persons)

dtf$country <- c("FRANCE","FRANCE","FRANCE","FRANCE","FRANCE","FRANCE","FRANCE","FRANCE","FRANCE","FRANCE")

# And finally, print the data frame dtf ordered by score

print(dtf[with(dtf, order(score)),])