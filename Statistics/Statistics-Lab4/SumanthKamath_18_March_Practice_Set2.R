# Install required packages
install.packages("readxl")
install.packages("ggplot2")
install.packages("factoextra")

# Load the libraries
library(readxl)
library(ggplot2)
library(factoextra)

# Load the built‑in iris dataset
data <- iris

# View the dataset
View(data)

# Separate numeric columns
data_numeric <- data[, 1:4]

# Standardize the data
data_scaled <- scale(data_numeric)

# Perform PCA
pca_result <- prcomp(data_scaled, center = TRUE, scale. = TRUE)

# Summary of PCA
summary(pca_result)



# Scree Plot
fviz_eig(pca_result, addlabels = TRUE)

# PCA Biplot
fviz_pca_biplot(pca_result,
                repel = TRUE,
                col.ind = iris$Species,  # color by species
                palette = "jco")

# Variables Plot
fviz_pca_var(pca_result, 
             col.var = "contrib",
             gradient.cols = c("blue", "yellow", "red"))

# Individuals Plot
fviz_pca_ind(pca_result,
             col.ind = iris$Species,
             palette = "jco")

