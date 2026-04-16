# Load dataset
data("iris")

# Remove categorical variable (Species)

iris_data <- iris[, -5]

# Standardize the data

iris_scaled <- scale(iris_data)

# Compute  distance matrix (Euclidean distance)

dist_matrix <- dist(iris_scaled, method = "euclidean")

# View  distance matrix (first few values)

print(as.matrix(dist_matrix)[1:5, 1:5])

# Apply hirearchical clustering (Single Linkage)

hc_single <- hclust(dist_matrix , method="single")

# Plot dendogram

plot(hc_single,
     main = "Dendogram - Single Linkage",
     xlab = "",
     sub = "",
     cex = 0.6)

# Cut tree into 3 clusters (for 3 species)

clusters <-  cutree(hc_single, k = 3)

# View cluster sizes (Shows how many points in each cluster)

print(table(clusters))

# Compare with actual species (Helps you see: How well clustering matches real classes)

print(table(clusters, iris$Species))

# Visualize clusters (2D plot)

plot(iris$Sepal.Length, iris$Sepal.Width,
     col = clusters,
     pch = 19,
     xlab = "Sepal Length",
     ylab = "Sepal Width",
     main = "Cluster  Visualization (Single Linkage)")
