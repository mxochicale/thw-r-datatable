
# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)

#SD=Subset of Data


#Mean of each column, grouped by Species
irisDT[, lapply(.SD, mean), by = Species]


#Mean of each column with the condition that Sepal.Lenght is < 5.3, grouped by Species
irisDT[Sepal.Length < 5.3, lapply(.SD, mean), by = Species]


#special	symbol:	.SDcols

# mean of columns 1 and 2 grouped by Species
irisDT[, lapply(.SD, mean), by = Species, .SDcols = 1:3]

# mean of columns that contain 'Lenght' and grouped by Species
irisDT[, lapply(.SD, mean), by = Species, .SDcols = grep("Length", names(irisDT))]


