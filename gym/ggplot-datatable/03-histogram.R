

# loading libraries
library(data.table)
library(ggplot2)

irisDT <- as.data.table(iris)

histogram <- ggplot(data=iris, aes(x=Sepal.Width))+ 
	geom_histogram(binwidth=0.2, color="black", aes(fill=Species)) + 
  	xlab("Sepal Width") +  ylab("Frequency") + ggtitle("Histogram of Sepal Width")

histogram

