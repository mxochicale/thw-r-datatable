

# loading data.table
library(data.table)

#build in iris dataset:
irisDT <- as.data.table(iris)

#subset rows 
irisDT[Species	==	"setosa",	]

#select columns as vector
irisDT[,Petal.Width]

#select columns as list()==.()
irisDT[,.(Petal.Width)]


#subset rows & select columns as vector
irisDT[Species == "setosa", Petal.Width]
#subset rows & select columns as list
irisDT[Species == "setosa", .(Petal.Width)]


#subset rows for an interval of values between(a,b)
irisDT[between(Petal.Width,1,1.2)]
irisDT[Petal.Width %between% c(1,2)]

#select columns
irisDT[,.(Species,Sepal.Length)]


