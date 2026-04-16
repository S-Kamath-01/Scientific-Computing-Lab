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

#Solutions
#(a)
?painters

#(b)
library(MASS)
data=painters
data

#(c)
str(data)

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

