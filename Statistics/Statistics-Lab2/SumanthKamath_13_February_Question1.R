# Command to delete all the R history
rm(list=ls(all=TRUE))
#Q1
x <- c(12, NA, 25, 18, NA, 30, 10, NA)
# Tasks:
# Display x
# Find which elements are NA
# Count total missing values
# Remove missing values
# Replace missing values with mean of available values
# Replace missing values with 0
# Print the updated vector after replacement

# Solutions
# Display x
print(x)

# Find the elements which are NA
is.na(x)

# Count the total missing values
sum(is.na(x))

# Remove the missing values
na.omit(x)

# Replace the missing values with mean of available values
c = x
c[is.na(x)] <- mean(x, na.rm = TRUE)
c

# Replace the missing values with 0
d = x
d[is.na(x)] <- 0 
d

# Print the updated vector after replacement
# For replacement with mean
print(c)
# For replacement with 0
print(d)

