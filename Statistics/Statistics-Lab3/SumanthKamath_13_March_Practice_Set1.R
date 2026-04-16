# Practice Set 1 (for loop)

# Q1. Print the values of 3i+2 for i = 1 to 12.
# Q2. Given the values x = c(4,9,16,25,36). Print the square root of each element.
# Q3. Given a vector x = c(10,25,7,18,42,5). Find the minimum element using for loop.
# Q4. Print all numbers between 1 and 50 that are multiples of 4 but not multiples of 8.
# Q5. Print the cubes of odd numbers fromm 1 to 15.
# Q6. Find the factorial of 6.
# Q7. Find the sum of all even numbers between 1 and 50.
# Q8. Find the largest number among c(14,27,35,9,42,18)

# Solutions
# Q1.

for(i in 1:12) {
  print(3*i + 2)
}

# Q2.

x <- c(4, 9, 16, 25, 36)
for(value in x) {
  print(sqrt(value))
}

# Q3.

x <- c(10, 25, 7, 18, 42, 5)
min_value <- x[1]
for(i in 2:length(x)) {
  if(x[i] < min_value) min_value <- x[i]
}
print(min_value)

# Q4.

for(i in 1:50) {
  if(i %% 4 == 0 && i %% 8 != 0) {
    print(i)
  }
}

# Q5.

for(i in 1:15) {
  if(i %% 2 == 1) {
    print(i^3)
  }
}

# Q6.

n <- 6
fact <- 1
for(i in 1:n) {
  fact <- fact * i
}
print(fact)

# Q7.

sum_even <- 0
for(i in 1:50) {
  if(i %% 2 == 0) sum_even <- sum_even + i
}
print(sum_even)

# Q8.

x <- c(14, 27, 35, 9, 42, 18)
max_value <- x[1]
for(i in 2:length(x)) {
  if(x[i] > max_value) max_value <- x[i]
}
print(max_value)
      

