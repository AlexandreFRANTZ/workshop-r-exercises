# Now you've learned to use the data, you need to learn to read and write data !
# Open and read the "csvTestFile.csv" file to render the a graph of it, replace every value from the "Series_title_3" into the number 42 and rewrite it in a "csvResult.csv" file
# Here are the steps:
# Set correctly your env to locate the file

getwd()
#setwd("./delivery/ThirdYear/HUB/WorkshopR/")
getwd()

# Read and store the file content

csvFile <- read.csv("csvTestFile.csv")
plot(csvFile$Period, csvFile$Data_value)

# Replace the values from the "Series_title_3" column

csvFile$Series_title_3 <- 42

# Create a new file and write inside of it

write.csv(csvFile, "./csvResult.csv", row.names=FALSE)