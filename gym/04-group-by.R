
# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)


irisDT[, .N, by = Species]

irisDT[, .(average = mean(Petal.Width)), by = Species]

irisDT[Sepal.Length < 5.3, .(average = mean(Petal.Width)), by =	Species]

irisDT[, .(average = mean(Petal.Width)), by = .(Species, logi =	Sepal.Length <	5.3)]



