source("../functions/calculates_attribute_size.R")

# Reading data -----------------------------------
iris <- read.csv("../data/iris.csv")
names(iris) <- tolower(names(iris))

# Execution -----------------------------------
avg_size <- calculates_attribute_size(iris, "Iris-versicolor", "sepal")
print(avg_size)
