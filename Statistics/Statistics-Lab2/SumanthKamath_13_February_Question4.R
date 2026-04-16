# Command to delete all the R history
rm(list=ls(all=TRUE))

#Q4
z <- c(2, 6, 9, 12, 15, 18, 21, 25)
# Find values greater than 10 AND divisible by 3
# Find values less than 10 OR divisible by 5
# Find values NOT divisible by 2
# Count how many values are greater than 15

# Solutions
# Find values greater than 10 and divisible by 3
z[(z>10) & (z%%3==0)]

# Find values less than 10 or divisible by 5
z[(z<10)|(z%%5==0)]

# Find values not divisible by 2
z[z%%2 != 0]

# Count how many values are greater than 15
sum(z>15)
