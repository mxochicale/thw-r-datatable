# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)

#count 
irisDT[Species == "setosa", .N]
uniqueN(irisDT,	by =	"Species")


#count distinct 
irisDT[, uniqueN(Species)]
irisDT[Petal.Width < 0.9, uniqueN(Species)]


