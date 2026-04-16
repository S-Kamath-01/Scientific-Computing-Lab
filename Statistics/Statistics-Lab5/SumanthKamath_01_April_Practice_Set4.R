# Install and load rattle package

install.packages("rattle")
library(rattle)

# Load wine dataset

data(wine)

# Remove categorical variable (Type)

wine_data <- wine[, -1]

# Standardize the data

wine_scaled <- scale(wine_data)

# Compute distance matrix (Euclidean distance)

dist_matrix <- dist(wine_scaled, method = "euclidean")

# View distance matrix (first few values)

print(as.matrix(dist_matrix)[1:5, 1:5])

# Apply hierarchical clustering (Single Linkage)

hc_single <- hclust(dist_matrix, method = "single")

# Plot dendogram - Single Linkage

plot(hc_single,
     main = "Dendrogram - Wine Dataset (Single Linkage)",
     xlab = "",
     sub = "",
     cex = 0.6)

# Cut tree into 3 clusters

clusters <- cutree(hc_single, k = 3)

# View cluster sizes

print(table(clusters))

# Compare clusters with actual wine types

print(table(clusters, wine$Type))

# Visualize clusters (2D plot using first two features)

plot(wine_scaled[,1], wine_scaled[,2],
     col = clusters,
     pch = 19,
     xlab = "Alcohol (Scaled)",
     ylab = "Malic Acid (Scaled)",
     main = "Cluster Visualization - Wine Dataset (Single Linkage)")


# Complete linkage
hc_complete <- hclust(dist_matrix, method = "complete")
plot(hc_complete,
     main = "Dendrogram - Wine Dataset (Complete Linkage)",
     xlab = "",
     sub = "",
     cex = 0.6)

clusters <- cutree(hc_complete, k = 3)

