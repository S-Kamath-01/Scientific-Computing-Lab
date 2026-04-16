# Load USArrests dataset

data("USArrests")

# Standardize the data

usarrests_scaled <- scale(USArrests)

# Compute distance matrix (Euclidean distance)

dist_matrix <- dist(usarrests_scaled, method = "euclidean")

# View distance matrix (first few values)

print(as.matrix(dist_matrix)[1:5, 1:5])

# Apply hierarchical clustering (Single Linkage)

hc_single <- hclust(dist_matrix, method = "single")

# Plot dendrogram - Single Linkage

plot(hc_single,
     main = "Dendrogram - USArrests (Single Linkage)",
     xlab = "",
     sub = "",
     cex = 0.6)

# Cut tree into 4 clusters

clusters <- cutree(hc_single, k = 4)

# View cluster sizes

print(table(clusters))

# Visualize clusters (2D plot using Murder and Assault)

plot(USArrests$Murder, USArrests$Assault,
     col = clusters,
     pch = 19,
     xlab = "Murder Rate",
     ylab = "Assault Rate",
     main = "Cluster Visualization - USArrests (Single Linkage)")

