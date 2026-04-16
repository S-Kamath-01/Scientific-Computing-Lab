#Question 1. Create a vector of length 25 and find the following:

#(a) Convert data into a matrix.
#(b) Find the sub matrix of order 4*4, and 3*2.
#(c) Change the row names of matrix (a) by Row1,Row2,...Row5.
#(d) Find the inverse, and transpose of the matrix (a).
#(e) Extract 5th column of the matrix.
#(f) Extract 2nd row of the matrix.
#(g) Create another matrix of order 5*5 and multiply with the given matrix (a).


#Solutions
vector1 <- seq(1,50,by=2)
vector1
#(a)
mat <- matrix(vector1,nrow=5,ncol=5,byrow= TRUE)
mat

#(b)
mat[1:4, 1:4]
mat[1:3, 1:2]

#(c)
rownames(mat) <- c("Row1","Row2","Row3","Row4","Row5")
mat

#(d)
inverse_matrix = solve(mat)
inverse_matrix
transpose_matrix = t(mat)
transpose_matrix

#(e)
mat[,5]

#(f)
mat[2,]

#(g)
vector2 <- 1:25
mat2 <- matrix(vector2,nrow=5,ncol=5,byrow= TRUE)
mat%*%mat2
