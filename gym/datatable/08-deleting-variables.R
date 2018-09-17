
# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)
irisDT

irisDT[, grep("Width",	names(irisDT)) := NULL]
irisDT[, Sepal.Length :=	NULL]
irisDT[, (2:2) := NULL]


