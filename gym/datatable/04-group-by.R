
# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)

#count the number of members in groups
irisDT[, .N, by = Species]

#Species with average of Petal.Width
irisDT[, .(average = mean(Petal.Width)), by = Species]


#Species with average of Petal.Width and condition of Sepal.Length <5.3
irisDT[Sepal.Length < 5.3, .(average = mean(Petal.Width)), by =	Species]

# average of Petal.Width grouped by species and logic variable for Sepal.Lenght<5.3
irisDT[, .(average = mean(Petal.Width)), by = .(Species, logic =	Sepal.Length <	5.3)]



