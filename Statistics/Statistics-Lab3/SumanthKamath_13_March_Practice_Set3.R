# Practice Set 3 (repeat loop)
#Q1. Print numbers from 1 to 8 using a repeat loop.
#Q2. Print squares of numbers starting from 1 and stop when the square exceeds 50.
#Q3. Keep adding natural numbers (starting from 1) until the sum exceeds 40.
#Q4. print the sequence 31-1 starting from i = 1 and stop when the value exceeds 50.
#Q5. compute the sum of consecutive even numbers starting from 2 and stop when the sum exceeds 150.
#Q6. compute the harmonic series 1 + 1/2 + 1/3 + ...... and stop when the sum exceeds 5.
#Q7. compute the binomial expansion terms of (1+x)^n for x=2 starting from n=1 and stop when the value exceeds 300.

# Solutions
# Q1.
i <- 1
repeat {
  print(i)
  i <- i + 1
  if(i > 8) break
}

# Q2.
i <- 1
repeat {
  sq <- i^2
  if(sq > 50) break
  print(sq)
  i <- i + 1
}

# Q3.
i <- 1
sum_value <- 0
repeat {
  sum_value <- sum_value + i
  if(sum_value > 40) break
  i <- i + 1
}
print(sum_value)

# Q4.
i <- 1
repeat {
  val <- 3*i - 1
  if(val > 50) break
  print(val)
  i <- i + 1
}

# Q5.
sum_even <- 0
i <- 2
repeat {
  sum_even <- sum_even + i
  if(sum_even > 150) break
  i <- i + 2
}
print(sum_even)

# Q6.
sum_h <- 0
n <- 1
repeat {
  sum_h <- sum_h + 1/n
  if(sum_h > 5) break
  n <- n + 1
}
print(sum_h)

# Q7.
x <- 2
n <- 1
repeat {
  val <- (1 + x)^n   # equals 3^n for x = 2
  if(val > 300) break
  print(val)
  n <- n + 1
}