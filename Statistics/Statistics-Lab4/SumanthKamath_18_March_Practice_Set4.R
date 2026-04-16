# Load dataset
data("mtcars")

# Select variables
data_fa <- mtcars[,c("mpg","disp","hp","drat","wt","qsec")]

# Standardize data
data_scaled <- scale(data_fa)

# Correlation matrix
cor_matrix <- cor(data_scaled)
print("Correlation Matrix:")
print(cor_matrix)

# Eigen Values
eigen_values <- eigen(cor_matrix)$values
print("Eigenvalues: ")
print(eigen_values)

# Scree Plot
plot(eigen_values,
     type = "b",
     main= "Scree Plot",
     xlab= "Factor Number",
     ylab = "Eigenvalue")

# Perform Factor Analysis
fa_result <- factanal(data_scaled, factors = 2, rotation = "varimax")
print(fa_result)

# Extract factor loadings
loadings_matrix <- as.matrix(fa_result$loadings)

# Compute communalities
communalities <- rowSums(loadings_matrix^2)

# Extract specific variance (uniqueness)
specific_variance <- fa_result$uniquenesses

# Create final factor analysis table
fa_table <- cbind(loadings_matrix,
                  Communality = communalities,
                  Specific_Variance = specific_variance)
print("Final Factor Analysis Table: ")
print(round(fa_table,3))
