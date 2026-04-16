# Install required packages
install.packages("readxl")
install.packages("ggplot2")
install.packages("factoextra")

# Load the libraries
library(readxl)
library(ggplot2)
library(factoextra)
# Load pizza data (replace with your file path)
pizza <- read_excel("D:/SumanthKamath_Labs/230957214_SC_Lab/Statistics/Statistics-Lab4/Pizza Data Set.xlsx")

# View the dataset
View(pizza)

# Convert to dataframe
pizza <- data.frame(pizza)

# Remove first column (ID/name)
pizza_numeric <- pizza[ , -1]

# Standardize the data
pizza_scaled <- scale(pizza_numeric)

# Perform PCA
pizza_pca <- prcomp(pizza_scaled, center = TRUE, scale. = TRUE)

# Summary
summary(pizza_pca)

# Eigen values
eigenvalues <- pca_result$sdev^2

# Proportion of variance explained
prop_var <- eigenvalues / sum(eigenvalues)
print(prop_var)

# Loading (Principal Components)
loadings <- pca_result$rotation
print(loadings)

# PCA Scores
scores <- pca_result$x
head(scores)

# Scree plot
fviz_eig(pizza_pca, addlabels = TRUE)

# Biplot
fviz_pca_biplot(pizza_pca,
                repel = TRUE,
                col.var = "red",
                col.ind = "blue")

# Variables plot
fviz_pca_var(pizza_pca,
             col.var = "contrib",
             gradient.cols = c("blue", "yellow", "red"))

# Individuals plot
fviz_pca_ind(pizza_pca,
             col.ind = "cos2",
             gradient.cols = c("blue", "yellow", "red"))

