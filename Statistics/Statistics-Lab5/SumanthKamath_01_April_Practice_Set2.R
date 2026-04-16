set.seed(1)
sample_index <- sample(1:150, 30)
sample_data <- iris_scaled[sample_index, ]

# Distance matrix

dist_matrix <- dist(sample_data, method = "euclidean")

# Hireachical clustering (Single Linkage)

hc_single <- hclust(dist_matrix, method = "single")

# Plot dendogram (clear)

plot(hc_single,
     main = "Dendogram - 30 Observations (Single Linkage)",
     xlab = "",
     sub = "",
     cex = 0.8)

# Draw rectangles for 3 clusters
rect.hclust(hc_single, k = 3 , border = "red")
