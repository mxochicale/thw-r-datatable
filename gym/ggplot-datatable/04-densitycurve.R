

# loading libraries
library(data.table)
library(ggplot2)

irisDT <- as.data.table(iris)


density1 <- ggplot(data=iris, aes(x=Sepal.Width)) + 
	geom_histogram(binwidth=0.2, color="black", fill="steelblue", aes(y=..density..)) +
  	geom_density(stat="density", alpha=I(0.2), fill="blue") +
  	xlab("Sepal Width") +  ylab("Density") + ggtitle("Histogram & Density Curve")

x11()
density1



density2 <- ggplot(data=irisDT, aes(x=Sepal.Width, fill=Species)) + 
	geom_density(stat="density", alpha=I(0.2)) +
  	xlab("Sepal Width") +  ylab("Density") + 
	ggtitle("Histogram & Density Curve of Sepal Width")
x11()
density2


