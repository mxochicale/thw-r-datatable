
# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)


#Simple	aggregation (.N number of rows, mean of Petal.Width): 
irisDT[,.(count = .N, average = mean(Petal.Width))]

#Including filtering:
irisDT[Petal.Width < 0.9, .(count = .N, average = mean(Petal.Width))]

