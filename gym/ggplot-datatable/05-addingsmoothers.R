

# loading libraries
library(data.table)
library(ggplot2)

irisDT <- as.data.table(iris)

smooth <- ggplot(data=irisDT, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + 
  	geom_point(aes(shape=Species), size=1.5) + 
	xlab("Sepal Length") + ylab("Sepal Width")


# Linear model
x11()
smooth + geom_smooth(method="lm") + ggtitle("Scatterplot with smoothers (Linear model)")

# Local polynomial regression
x11()
smooth + geom_smooth(method="loess") + ggtitle("Scatterplot with smoothers (Local polynomial regression) ")


