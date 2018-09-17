
# loading data.table
library(data.table)

#build in iris dataset:
#irisDT <- as.data.table(iris)
#irisDT

irisDT <- copy(iris)
setDT(irisDT)

#build irisH
irisH <- data.table(
	Species	=	c("setosa","versicolor","virginica"),
	Species.full =	c("Iris	setosa","Iris	versicolor","Iris virginica"),
	height =	1:3,
	soil =		c("mud","rock","sand")
)

# join irisDT with irisH
irisDT[irisH, on = .(Species)]

# or
irisDT[irisH, on = "Species"]


# join irisDT with irisH with only Species.full
irisDT[irisH, on = .(Species), Species.full := Species.full]

# join irisDT with irisH using specific columns of irishH with the same name
irisDT[irisH, on = .(Species),	
	`:=` (Species.full = Species.full, height = height, soil = soil)]

# the same but with `update-by-reference-join` which is for  memory efficiency
irisDT[irisH, on = .(Species),
	`:=` (Species.full = i.Species.full, height = i.height,	soil = i.soil)]
#https://stackoverflow.com/questions/34598139/


