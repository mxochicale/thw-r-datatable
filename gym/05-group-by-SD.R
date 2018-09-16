
# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)

#SD=Subset of Data

irisDT[, lapply(.SD, mean), by = Species]

irisDT[Sepal.Length < 5.3, lapply(.SD, mean), by = Species]


#special	symbol:	.SDcols

irisDT[, lapply(.SD, mean), by = Species, .SDcols = 1:2]
irisDT[, lapply(.SD, mean), by = Species, .SDcols = grep("Length", names(irisDT))]


