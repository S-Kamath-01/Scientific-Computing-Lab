# Question 1. Generate a vector from 10 to 40 by increment 0.5 and find the following:

#(a) Check the type of vector.
#(b) Arrange  the vector in decreasing and increasing order.
#(c) Extract the 4th and 8th term from the vector.
#(d) Change the 5th, 10th and 7th term with 100,101 & 120.
#(e) Discuss descriptive measures for vector (d).

#Solutions

vector1 <- seq(from= 10,to=40,by=0.5)
vector1
#(a)
typeof(vector1)
class(vector1)

#(b)
decreasingOrder <- sort(vector1, decreasing = TRUE)
decreasingOrder
increasingOrder <- sort(vector1)
increasingOrder

#(c)
vector1[c(4,8)]

#(d)
vector1[c(5,10,7)] <- c(100,101,120)
vector1

#(e)
#Summary
summary(vector1)
#Mean of the vector
mean(vector1)
#Median of the vector
median(vector1)
#Standard deviation of the vector
sd(vector1)
#Variance of the vector
var(vector1)
#Minimum value of the vector
min(vector1)
#Maximum value of the vector
max(vector1)

