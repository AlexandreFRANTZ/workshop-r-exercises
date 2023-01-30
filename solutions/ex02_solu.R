# We will now learn to visualize the data we store

# First, create 2 lists of numbers:
# "Year" -> a list from 2023 to 2055
# "Money" -> a list from 12000 to 100000

Year <- c(2023:2055)
Money <- lapply(2023:2055, sample, x = 12000:100000, size = 1)

# Your goal now is to display your annual salary on a graph to visualize how much you'll earn each year from 2023 to 2055 in €

plot(x = Year, y = Money, type = "S")