# Command to delete all the R history
rm(list=ls(all=TRUE))

#Q2
v <- c(5, 12, 18, 3, 25, 8, 15)
# Find values greater than 10
# Find values less than 10
# Find values between 10 and 20 (inclusive)
# Find positions where values are greater than 10
# Find positions where values are even

# Solutions
# Find the values greater than 10
v[v>10]

# Find the values less than 10
v[v<10]

# Find the values between 10 and 20 (inclusive)
v[(v>=10) & (v<=20)]

# Find the positions where values are greater than 10
which(v>10)

# Find the positions where values are even
which(v%%2==0)
