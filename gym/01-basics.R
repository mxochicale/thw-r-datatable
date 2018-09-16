

# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)

#subset rows 
irisDT[Species	==	"setosa",	]

#select columns 
irisDT[,Petal.Width]
irisDT[,.(Petal.Width)]


#subset rows &	select columns
irisDT[Species == "setosa", Petal.Width]
irisDT[Species == "setosa", .(Petal.Width)]


#subset rows
irisDT[between(Petal.Width,1,1.2)]
irisDT[Petal.Width %between% c(1,2)]

#select columns
irisDT[,.(Species,Sepal.Length)]


