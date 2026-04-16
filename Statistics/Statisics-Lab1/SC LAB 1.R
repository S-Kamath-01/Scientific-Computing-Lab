

# ==== Objective 1: To understand and perform basic operations for handling vectors, matrices, and data frames in R.

                 ## Vector

# Which are used to hold multiple data values of the same type is called vector 
# One major key point is that in R the indexing of the vector will 
# start from ‘1’ and not from ‘0'. We can create numeric vectors and 
# character vectors as well.



           ## Types of Vectors

# Vectors are of different types which are used in R. 
# Following are some of the types of vectors:

# (A) Numeric vectors

# Numeric vectors are those which contain numeric values such as integer etc.


# Example

x <- c(14, 15, 16, 17) # creation of vectors using c() function.
x

typeof(x) # display type of vector

class(x) # display class of vector



#(B)Character vectors

# Character vectors contain alphanumeric values and special characters.

x <- c('hi', 20, 'hello', 7) 
typeof(x) # Displaying type of vector
class(x) # display class of vector


#(C)Logical vectors

# Logical vectors contain boolean values such as TRUE, FALSE and NA for Null values.

x <- c(TRUE, FALSE, TRUE, NA)# Creating logical vector using c() function

typeof(x) # Displaying type of vector
class(x) # display class of vector



### Creating a vector


x <- c(61, 4, 21, 67, 89, 2)     # 1.Using  c() function
x
y<- seq(from=1, to=15, by = 0.5) # 2. Using seq() function
y
z <- 2:27                         # 3. Using ":" 
z

                 ## Accessing vector elements

# Accessing elements in a vector is the process of performing operation 
# on an individual element of a vector. There are many ways through which 
# we can access the elements of the vector. 
# The most common is using the ‘[]’, symbol.



X <- c(2, 15, 18, 10, 12)
X[4]                      # 1. Accessing elements with an index number.


Y <- c(4, 8, 12, 11, 17)
Y[c(4, 1)]                # 2. Using c() function



Z <- c(15, 21, 11, 41, 14, 31)
Z[Z>11]                    # 3. Using logical expressions




## Modifying a vector

X <- c(2, 7, 9, 7, 8, 2)

X[3] <- 1
X[2] <-9                  # 1. Modify a specific element
X

y<- c(2, 7, 9, 7, 8, 2)
y[y>5] <- 10              # 2.Modify using different logics.
y

z <- c(2, 7, 9, 7, 8, 2)
z[c(3, 5, 1)]<-22        # 3.Modify by specifying the position or elements.
z



## Sorting elements of a Vector


#sort() function is used with the help of which we can sort the 
#values in ascending or descending order.

z <- c(8, 2, 7, 1, 11, 2)
I=sort(z)                 # 1. Sort in ascending order
I
D=sort(z, decreasing = TRUE)
D                         

# 2. Sort in descending order



## Combine more than two vector into a single vector

x=c(1,2,3)
x
y=c(4,5,6)
y
z=c(x,y) # Using c()function
z




## To check the existence of an vector

cc <- c(12, 7, 3, 3, 8, 2)
is.vector(cc) # Command to check


## Convert an object into a vector
v=1:9
v
m=matrix(v,nrow=3,ncol=3)
m

as.vector(m)   # Command to convert in vector




         ## Practice Question 

# Question 1. Generate a vector from 10 to 40 by increment 0.5 and find the following:

#(a) Check the type of vector.
#(b) Arrange  the vector in decreasing and increasing order.
#(c) Extract the 4th and 8th term from the vector.
#(d) Change the 5th, 10th and 7th term with 100,101 & 120.
#(e) Discuss descriptive measures for vector (d).

# Question 2. Write the command for the following work in R

#(a) To quite R.
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


## ================================================================


               ## Matrix

#(A) Create a matrix with the help of given data.

data=c(2,5,6,8,9,10,12,13,21,22,23,12,44,55,11,10)
data

mat=matrix(data,nrow=4,ncol = 4) # command to create matrix
mat

mat1=matrix(data,nrow = 4,ncol=4,byrow =TRUE) # command to create a matrix with row wise elements.
mat1


#(B) Extracting row, column, and sub-matrix from a given matrix.



col1=mat[,1]         # Extraction of the 1st column
col1       

row1=mat[1,]         # Extraction of the 1st row
row1

submat=mat[3,2]      # Extraction of the element of 3rd row and 2nd column
submat

submat1=mat[1:3,3:4] # Extraction of the sub-matrix
submat1



#(C) Multiplication, transpose, and inverse of the matrix



A=mat  # 1st matrix
B=mat1 # 2nd matrix


C=A%*%B        # multiplication of the matrix
C

Inv_A=solve(A) # inverse of the matrix
Inv_A

Trps=t(A)      # transpose of the matrix
Trps



#(D) Changing the row, and column names of the matrix

rownames(mat) <- c("R1", "R2","R3","R4") # command to change the row names of the matrix
mat


colnames(mat)<-c("C1", "C2","C3","C4") # command to change the column names of the matrix
mat






# Practice Question:

#Question 1. Create a vector of length 25 and find the following:

#(a) Convert data into a matrix.
#(b) Find the sub matrix of order 4*4, and 3*2.
#(c) Change the row names of matrix (a) by Row1,Row2,...Row5.
#(d) Find the inverse, and transpose of the matrix (a).
#(e) Extract 5th column of the matrix.
#(f) Extract 2nd row of the matrix.
#(g) Create another matrix of order 5*5 and multiply with the given matrix (a). 

# Question 2. Create an identity matrix of order 3*3.

# Question 3. Write the matrix for the given data and discuss 
#   descriptive measures for 3rd row of the matrix.

#  (data: 11,2,3,4,5,3,5,2,1,5,6,10,21,2,22,10,33,32,31,30,25,26,27,14,15)


## ===================================================================

                        ## Data frame

# Variables in a data frame may be numeric (numbers) or categorical (characters or factors).
# In a data frame, we can combine variables of equal length.



#(A) Create data frame with the help of given vector

x=letters[1:25]
x
y=1:25
y
z=seq(11, 35,1)
z


data=data.frame(x,y,z) # command to make data frame
data





#(B) Extract variable from given data frame

d1=data.frame(x,y,z)
d1


vector1=d1$x      # "$" sign is used to extract variable
vector1

vector2=d1$X1     # "$" sign is used to extract variable
vector2

vector3=d1$z      # "$" sign is used to extract variable
vector3


## Practice Question:

# Question 1. An example of data frame "painters" is available in the package "MASS".
# Find the following for given "painters" data:

#(a) Understand the description of data with the help of command.
#(b) Print the data.
#(c) Find the structure of data.
#(d) Extract each variable.
#(e) Find the descriptive measures for each variables.
#(f) Check which variable is numeric and which is factor.
#(g) Extract the name of painters and name of variables.
#(h) Extract the top six row of data.  





###Code

#(a)
?painters

#(b)
library(MASS)
data=painters
data

#(c)
str(data) # The result of str gives the dimension as well as the name and type of each variable.

#(d)
colour=data$Colour
colour
sch=data$School
sch

#(e)
summary(painters)
summary(sch)

#(f)
typeof(sch)
typeof(colour)
class(colour)
class(data)

#(g)
rownames(painters)
colnames(painters)

#(h)
head(data)



##Extract data from a data frame

# The data from a data frame can be extracted by using the matrix-style [row, column] 
# indexing. 
# Example: Suppose we want to extract information on the first painter "Da Udine"
# on the variable "Composition" from the data set painters. 
painters["Da Udine", "Composition"]


## Attaching a data frame

#1. With a command attach() over the data frame, 
#   the variables can be referenced directly by name.

attach(painters)
summary(School)
summary(Drawing)

## Detaching of data frame

detach(painters) #The command detach() recovers the default setting.
summary(School)

## Subsets of a data frame 


#1. We can obtained a subset() of complete dataset

subset(painters, Composition <= 6)

subset(painters, School=='F') 

#2. Uninteresting columns can be eliminated.
#   The third and the fifth column ( Colour and School) are not shown.

subset(painters, School=="F", select=c(-3,-5))








