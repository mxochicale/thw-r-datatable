

# loading libraries
library(data.table)
library(ggplot2)

irisDT <- as.data.table(iris)

facet <- ggplot(data=irisDT, aes(Sepal.Length, y=Sepal.Width, color=Species)) + 
  geom_point(aes(shape=Species), size=1.5) + geom_smooth(method="lm") +
  xlab("Sepal Length") + ylab("Sepal Width") 

# Along rows
x11()
facet + facet_grid(. ~ Species) + ggtitle("Faceting along rows")

# Along columns
x11()
facet + facet_grid(Species ~ .) + ggtitle("Faceting along columns")
