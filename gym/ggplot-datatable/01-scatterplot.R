

# loading libraries
library(data.table)
library(ggplot2)

irisDT <- as.data.table(iris)


scatter <- ggplot(data=irisDT, aes(x = Sepal.Length, y = Sepal.Width)) + 
	geom_point(aes(color = Petal.Width, shape = Species), size = 5, alpha = I(1/2)) +
        geom_vline(aes(xintercept = mean(Sepal.Length)), color = "red", linetype = "dashed") +
        geom_hline(aes(yintercept = mean(Sepal.Width)), color = "red", linetype = "dashed") +
        scale_color_gradient(low = "yellow", high = "red") +
        xlab("Sepal Length") +  ylab("Sepal Width") +
        ggtitle("Sepal Length-Width")

scatter



