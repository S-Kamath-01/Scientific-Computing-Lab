# Practice Set 2 (while loop)
#Q1. Print numbers from 1 to 10 using a while loop.
#Q2. Print even numbers less than 20.
#Q3. Find the smallest n such that n^2> 150.
#Q4. Compute the sum of first 10 natural numbers.
#Q5. Print numbers starting from 3 and keep adding 4 each time until the number exceeds 50
#Q6. Print cubes of numbers starting from 1 until the cube exceeds 300.
#Q7. Given a number 8642, compute the sum of its digits using a while loop.

# Solutions
# Q1.
i <- 1
while(i <= 10) {
  print(i)
  i <- i + 1
}


# Q2.
i <- 2
while(i < 20) {
  print(i)
  i <- i + 2
}

# Q3.
n <- 1
while(n^2 <= 150) {
  n <- n + 1
}
print(n)

# Q4.
i <- 1
sum_value <- 0
while(i <= 10) {
  sum_value <- sum_value + i
  i <- i + 1
}
print(sum_value)

# Q5.
x <- 3
while(x <= 50) {
  print(x)
  x <- x + 4
}

# Q6.
i <- 1
while(i^3 <= 300) {
  print(i^3)
  i <- i + 1
}

# Q7.
num <- 8642
sum_digits <- 0
while(num > 0) {
  sum_digits <- sum_digits + (num %% 10)
  num <- num %/% 10
}
print(sum_digits)

