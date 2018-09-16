
# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)
irisDT

#Adding variables

irisDT[, rownumber := .I]
irisDT[, Sepal.Area :=	Sepal.Length *	Sepal.Width]
irisDT[, `:=` (Sepal.Area = Sepal.Length * Sepal.Width, Petal.Area = Petal.Length * Petal.Width)]


#Adding variables by group

irisDT[, Total.Sepal.Area := sum(Sepal.Area), by = Species]
irisDT[, `:=` (Total.Sepal.Area = sum(Sepal.Area), Total.Petal.Area = sum(Petal.Area)),	by = Species]
