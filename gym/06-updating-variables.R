
# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)
irisDT


#special operator  :=

#Updating variables
irisDT[, Sepal.Length := Sepal.Length*2]
irisDT[, `:=` (Sepal.Length = Sepal.Length*2, Petal.Width = Petal.Width/2) ]


#Updating variables by group
irisDT[, Sepal.Length := Sepal.Length*uniqueN(Sepal.Width)/.N, by = Species]
irisDT[, `:=` (Sepal.Length = Sepal.Length * uniqueN(Sepal.Width), Petal.Width = Petal.Width / .N), by = Species]

