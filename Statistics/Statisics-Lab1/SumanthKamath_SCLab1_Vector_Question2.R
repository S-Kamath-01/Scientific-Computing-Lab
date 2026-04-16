# Question 2. Write the command for the following work in R

#(a) To quit R.
#(b) To delete whole console window.
#(c) To install the package.
#(d) To call the package from library.
#(e) To find out the descriptive measures of data.
#(f) To combine more than two vectors into a single vector.
#(g) To run the code in console window.
#(h) Path to arrange window.
#(i) Path to change font size.
#(j) To convert an object into a vector.
#(k) To check for the existence of a vector in R.
#(l) To find out the no. of observation in a given vector.
#(m) To get the help from console window.

#Solutions

#(a)
q()

#(b)
#Ans:- Ctrl + L

#(c)
install.packages("MASS") # Mass is used as an example for the package command

#(d)
library("MASS")

#(e)
x <- 1:29
x
summary(x)

#(f)
vector1 <- c(1,2,3)
vector2 <- c(4,5,6)
combinedVector <- c(vector1,vector2)
combinedVector

#(g)
#Ans:- Ctrl + Enter

#(h)
#Ans:- View → Panes → Pane Layout

#(i)
#Ans:- Tools → Global Options → Appearance

#(j)
data <- 1:9
mat <- matrix(data,nrow=3,ncol=3,byrow = TRUE)
mat
as.vector(mat)

#(k)
is.vector(x)

#(l)
length(data)
length(x)

#(m)
?mean
help(mean)
