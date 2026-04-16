# Command to delete all the R history
rm(list=ls(all=TRUE))

# Write the R code to calculate the values of the given data (x) using the function:
# f(x){2x+1: x<0 ; x²: 0<=x<=2 ; 3x: x>2}
# Given data:
# x = [-2,5]

# Solutions
# Making the sequence for given data
x  <- seq(from = -2, to=5,by=1)
print(x)

# Making the function as per the question
F <- function(x){
  if(x<0){
    return ((2*x)+1)
  }else if((x>=0) & (x<=2)){
    return (x*x)
  }else{
    return(3*x)
  }
}

# Applying the function on the data and printing
values <- sapply(x,F)
print(values)
