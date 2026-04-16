# Install required packages
install.packages("readxl")
install.packages("ggplot2")
install.packages("factoextra")

# Load the libraries
library(readxl)
library(ggplot2)
library(factoextra)

# Import the excel dataset
PCA_Data_ <- read_excel("D:/SumanthKamath_Labs/230957214_SC_Lab/Statistics/Statistics-Lab4/PCA Data .xls")

# View the dataset
View(PCA_Data_)

# Convert the dataset into a data frame
data <- data.frame(PCA_Data_)

# Remove first column if it contains names/labels
data_numeric <- data[,-1]

# Standardize the data
data_scaled <- scale(data_numeric)

# Perform PCA
pca_result <- prcomp(data_scaled, center = TRUE, scale. = TRUE)

# PCA Summary
summary(pca_result)

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

# Scree Plot 
fviz_eig(pca_result,addlabels = TRUE)

# PCA Biplot
fviz_pca_biplot(pca_result,
                repel = TRUE,
                col.var = "red",
                col.ind = "blue")

# Variables Plot
fviz_pca_var(pca_result,
             col.var = "contrib",
             gradient.cols = c("blue","yellow","red"),
             repel = TRUE)

# Individuals Plot
fviz_pca_ind(pca_result,
             col.ind = "cos2",
             gradient.cols = c("blue","yellow","red"),
             repel = TRUE)
