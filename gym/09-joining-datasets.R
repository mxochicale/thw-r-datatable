
# loading data.table
library(data.table)

#build in iris dataset:
#irisDT <- as.data.table(iris)
#irisDT

irisDT <- copy(iris)
setDT(irisDT)

irisH <- data.table(
	Species	=	c("setosa","versicolor","virginica"),
	Species.full =	c("Iris	setosa","Iris	versicolor","Iris virginica"),
	height =	1:3,
	soil =		c("mud","rock","sand")
)


irisDT[irisH, on = .(Species)]
irisDT[irisH, on = "Species"]
#irisDT[irisH, on = .(Species = Spec,	other_col)]

irisDT[irisH, on = .(Species), Species.full := Species.full]


irisDT[irisH, 
	on = .(Species),	
	`:=` (Species.full = Species.full, height = height, soil = soil)]


irisDT[irisH,	
	on = .(Species),
	`:=` (Species.full = i.Species.full, height = i.height,	soil = i.soil)]



