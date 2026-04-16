# Command to delete all the R history
rm(list=ls(all=TRUE))

# Write the R code to calculate the values of the given data (n) using the function:
# f(n){n²: if 'n' is even ; n³: if 'n' is odd}
# Given data:
# x = [1, 100]

# Solutions
# Making the sequence for given data
n  <- seq(from = 1, to=100,by=1)
print(n)

# Making the function as per the question
F <- function(n){
  if(n%%2==0){
    return (n*n)
  }else{
    return(n*n*n)
  }
}

# Applying the function on the data and printing
values <- sapply(n,F)
print(values)
