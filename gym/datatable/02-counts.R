# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)

#count 
irisDT[Species == "setosa", .N]

#count distint groups in Species
uniqueN(irisDT,	by =	"Species")

#or
irisDT[, uniqueN(Species)]

#count distinct groups in Species with the condition   Petal.Width<0.9
irisDT[Petal.Width < 0.9, uniqueN(Species)]


