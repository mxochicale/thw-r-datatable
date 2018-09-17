

# loading libraries
library(data.table)
library(ggplot2)

irisDT <- as.data.table(iris)



box <- ggplot(data=irisDT, aes(x=Species, y=Sepal.Length)) + 
	geom_boxplot(aes(fill=Species)) + 
	ylab("Sepal Length") + ggtitle("Iris Boxplot") +
 	stat_summary(fun.y=mean, geom="point", shape=5, size=4) 


box


