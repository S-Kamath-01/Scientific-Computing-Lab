# Command to delete all the R history
rm(list=ls(all=TRUE))

# Suppose marks of the 15 students are given:
# 85, 90, 75, 65, 55, 25, 45, 66, 80, 76, 70, 90, 82, 35, 45
# Write the R code to calculate the grade  of the students using the function
# G(m) = {A:m>=80 ; B: 60<=m<80 ; C: 40<=m<60 ; F: m<40 }

# Solution
# Making a vector for marks
marks <- c(85, 90, 75, 65, 55, 25, 45, 66, 80, 76, 70, 90, 82, 35, 45)
print(marks)

# Making a function as per question
G <- function(marks){
  if(marks>=80){
    return("A")
  }else if((marks>=60)&(marks<80)){
    return("B")
  }else if((marks>=40)&(marks<60)){
    return("C")
  }else{
    return("F")
  }
}

# Applying the function on the marks and printing
grades <- sapply(marks,G)
print(grades)

