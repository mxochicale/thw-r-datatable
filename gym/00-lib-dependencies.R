
mirror_repo <- 'https://www.stats.bris.ac.uk/R/'
install.packages("devtools", repos=mirror_repo, dependencies = TRUE)

library(devtools)
install_github("Rdatatable/data.table", build_vignettes=FALSE)

###installing ggplot2 requires between 5-15mins (depends of the machine capabilities)
#install.packages("ggplot2", repos=mirror_repo, dependencies = TRUE)


