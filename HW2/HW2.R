#AUTHOR: Eric Becerril-Blas
#PURPOSE: R script for HW 2

sink("/Users/becerrilblas/Github/STATS-412/HW2/HW2.txt") # Overwrite the existing file HW1.txt to empty it

sink("/Users/becerrilblas/Github/STATS-412/HW2/HW2.txt", append=TRUE, split=TRUE) #Start appending output to the .txt file

# Print out name
cat("Eric Becerril-Blas
HW1: 17, 21, 22, 28, 29, 30, 33, 37
Date: 02/13/20

")



# Print out problem 21
cat("PROBLEM#17:A study was made on the amount of converted
sugar in a certain process at various temperatures. The
data were coded and recorded as follows:
Temperature, x Converted Sugar, y
1.0                   8.1
1.1                   7.8
1.2                   8.5
1.3                   9.8
1.4                   9.5
1.5                   8.9
1.6                   8.6
1.7                   10.2
1.8                   9.3
1.9                   9.2
2.0                   10.5

(a) evaluate s2;
(b) construct a 95% confidence interval for β0;
(c) construct a 95% confidence interval for β1.
")

cat("STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")

n <- 11
x <- c(1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2.0)
y <- c(8.1, 7.8, 8.5, 9.8, 9.5, 8.9, 8.6, 10.2, 9.3, 9.2, 10.5)


x_squared <- x^2
cat("
x^2 =
")

print(x_squared)


xy <- x * y
cat("
xy =
")
print(xy)

cat("

")

y_squared <- y^2
cat("
y^2 =
")
print(y_squared)


sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_yS <- sum(y_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
,"Sum(y^2) = ", sum_yS
,"Sum(x^2) = ", sum_xS, sep = "\n"
)


b1 = (n*sum_xy - sum_x*sum_y)/(n*sum_xS - sum_x*sum_x)

b0 = (sum_y - b1*sum_x)/n

cat("

")

cat("b0 = ", b0,
 "b1 = ", b1, sep = "\n"
)

cat("

")

Sxx = sum_xS - (1/n)*(sum_x^2)
Syy = sum_yS - (1/n)*(sum_y^2)
Sxy = sum_xy - (1/n)*(sum_y*sum_x)

cat("Sxx = ", Sxx,
 "Syy = ", Syy
,"Sxy = ", Sxy, sep = "\n"
)

cat("

")

sS = (Syy - b1*Sxy)/(n-2)
cat("s^2 =
")
print(sS)

cat("

")
cat("STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")

a <- 5
s <- sqrt(sS)

error <- qt(0.975,df=n-2)*s/sqrt(n)
left <- a-error
right <- a+error

print(left)
print(right)
cat("End of Problem 17 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")

# Print out problem 22
cat("PROBLEM#21: Test the hypothesis that β1 = 6 in Exercise
11.9 on page 399 against the alternative that β1 < 6.
Use a 0.025 level of significance
")

cat("STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")

n <- 12
x <- c(40,20,25,20,30,50,40,20,50,40,25,50)
y <- c(385,400,395,365,475,440,490,420,560,525,480,510)

x_squared <- x^2
cat("
x^2 =
")

print(x_squared)


xy <- x * y
cat("
xy =
")
print(xy)

cat("

")

y_squared <- y^2
cat("
y^2 =
")
print(y_squared)


sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_yS <- sum(y_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
,"Sum(y^2) = ", sum_yS
,"Sum(x^2) = ", sum_xS, sep = "\n"
)


b1 = (n*sum_xy - sum_x*sum_y)/(n*sum_xS - sum_x*sum_x)

b0 = (sum_y - b1*sum_x)/n

cat("

")

cat("b0 = ", b0,
 "b1 = ", b1, sep = "\n"
)

cat("

")

Sxx = sum_xS - (1/n)*(sum_x^2)
Syy = sum_yS - (1/n)*(sum_y^2)
Sxy = sum_xy - (1/n)*(sum_y*sum_x)

cat("Sxx = ", Sxx,
 "Syy = ", Syy
,"Sxy = ", Sxy, sep = "\n"
)

cat("

")

sS = (Syy - b1*Sxy)/(n-2)
cat("s^2 =
")
print(sS)
cat("End of Problem 21 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")


# Print out problem 22
cat("PROBLEM#22: Using the value of s2 found in Exercise
11.16(a), construct a 95% confidence interval for μY |85
in Exercise 11.2 on page 398.
")

cat("STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")
n <- 9
x <- c(77, 50, 71, 72, 81, 94, 96, 99, 67)
y <- c(82, 66, 78, 34, 47, 85, 99, 99, 68)

x_squared <- x^2
cat("
x^2 =
")

print(x_squared)


xy <- x * y
cat("
xy =
")
print(xy)

cat("

")

y_squared <- y^2
cat("
y^2 =
")
print(y_squared)


sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_yS <- sum(y_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
,"Sum(y^2) = ", sum_yS
,"Sum(x^2) = ", sum_xS, sep = "\n"
)


b1 = (n*sum_xy - sum_x*sum_y)/(n*sum_xS - sum_x*sum_x)

b0 = (sum_y - b1*sum_x)/n

cat("

")

cat("b0 = ", b0,
 "b1 = ", b1, sep = "\n"
)

cat("

")

Sxx = sum_xS - (1/n)*(sum_x^2)
Syy = sum_yS - (1/n)*(sum_y^2)
Sxy = sum_xy - (1/n)*(sum_y*sum_x)

cat("Sxx = ", Sxx,
 "Syy = ", Syy
,"Sxy = ", Sxy, sep = "\n"
)

cat("

")

sS = (Syy - b1*Sxy)/(n-2)
cat("s^2 =
")
print(sS)
cat("End of Problem 22 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")
# Print out problem 28
cat("PROBLEM#28: Done by hand
")

cat("PROBLEM#29: Use the data set
y    x
7    2
50   15
100  30
40   10
70   20


(a) Plot the data.
(b) Fit a regression line through the origin.
(c) Plot the regression line on the graph with the data.
(d) Give a general formula (in terms of the yi and the
slope b1) for the estimator of σ2.
(e) Give a formula for Var(ˆyi), i = 1, 2, . . . , n, for this
case.
(f) Plot 95% confidence limits for the mean response
on the graph around the regression line.
")

x <- c(2,15, 30,10,20)
y <- c(7,50,100,40,70)
png("prob29.png", width = 350, height = 350)
plot(x, y, main="X vs Y",
   xlab="(x)", ylab="(y) ",pch = 16,)

png("prob29reglin.png", width = 350, height = 350)
plot(x, y, main="X vs Y with Reg line",
    xlab="(x)", ylab="(y) ",pch = 16,)
abline(lm(y ~ x))
