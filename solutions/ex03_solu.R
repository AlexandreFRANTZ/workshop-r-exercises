# The exercise here is to display the sine wave in a color and the cosine wave in another color
# You will first create a sequence from 0 to 20 by 0.1

list <- seq(0, 20, 0.1)

# Now, create variables equivalent to the sine and cosine of this sequence

sine <- sin(list)
cosine <- cos(list)

# You can now display those variables on a graph
# Draw the sine line in red and the cosine line in blue

plot(list, sine, col="red", type="l")
lines(list, cosine, col="blue")