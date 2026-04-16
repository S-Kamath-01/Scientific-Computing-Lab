# Question 3. Write the matrix for the given data and discuss 
#   descriptive measures for 3rd row of the matrix.

#  (data: 11,2,3,4,5,3,5,2,1,5,6,10,21,2,22,10,33,32,31,30,25,26,27,14,15)


data <- c(11,2,3,4,5,3,5,2,1,5,6,10,21,2,22,10,33,32,31,30,25,26,27,14,15)
mat <- matrix(data,nrow=5,ncol=5,byrow=TRUE)
mat

#summary
summary(mat[3,])
#Mean of the 3rd row of the matrix
mean(mat[3,])
#Median of the 3rd row of the matrix
median(mat[3,])
#Standard deviation of the 3rd row of the matrix
sd(mat[3,])
#Variance of the 3rd row of the matrix
var(mat[3,])
#Minimum value of the 3rd row of the matrix
min(mat[3,])
#Maximum value of the 3rd row of the matrix
max(mat[3,])
