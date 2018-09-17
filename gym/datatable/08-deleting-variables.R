
# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)
irisDT

# delete columns in irisDT that contains `Width`
irisDT[, grep("Width",	names(irisDT)) := NULL]

# delete `Sepal.Length` column of irisDT
irisDT[, Sepal.Length :=	NULL]

# delete column 2  of irisDT
irisDT[, (2:2) := NULL]


