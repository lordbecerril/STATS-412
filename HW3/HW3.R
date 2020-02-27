#AUTHOR: Eric Becerril-Blas
#PURPOSE: R script for HW 3

sink("/Users/becerrilblas/Github/STATS-412/HW3/HW3.txt") # Overwrite the existing file HW1.txt to empty it

sink("/Users/becerrilblas/Github/STATS-412/HW3/HW3.txt", append=TRUE, split=TRUE) #Start appending output to the .txt file

# Print out name
cat("Eric Becerril-Blas
HW3: Chapter 11: 45, 46, 61, 65 and Chapter 12: 5, 10
Date: 02/27/20

")



cat("11.45 With reference to Exercise 11.13 on page 400,
assume a bivariate normal distribution for x and y.
(a) Calculate r.
(b) Test the null hypothesis that ρ = −0.5 against the
alternative that ρ < −0.5 at the 0.025 level of significance.
(c) Determine the percentage of the variation in the
amount of particulate removed that is due to
changes in the daily amount of rainfall.

")


cat("STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")

cat("Data is
x = Daily Rainfall
y = Particulate Removed
")

n <- 9

x <- c(4.3, 4.5, 5.9, 5.6, 6.1, 5.2, 3.8, 2.1, 7.5)


y <- c(126, 121, 116, 118, 114, 118, 132, 141, 108)


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

cat("

")

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



cat("Correlation coefficient is r = Sxy/sqrt(Sxx*Syy) where Sxx, Syy, and Sxy are

")



Sxx = sum_xS - (1/n)*(sum_x^2)
Syy = sum_yS - (1/n)*(sum_y^2)
Sxy = sum_xy - (1/n)*(sum_y*sum_x)

cat("Sxx = ", Sxx,
 "Syy = ", Syy
,"Sxy = ", Sxy, sep = "\n"
)

cat("So r is
")

r <- Sxy / sqrt(Sxx*Syy)
print(r)
cat("
")
cat("STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")

cat("The test statistic is t = (r*sqrt(n-2))/sqrt(1-r^2)

")
t <- (r*sqrt(n-2))/sqrt(1-r^2)
print(t)

cat(" since calculated t is < -2.365 we reject the null hypothesis and conclude that ρ < −0.5
")
cat("STARTING R SOLUTION BELOW FOR PART C:--------------------------------------
")

cat("Sample coefficient of determination is r^2, which is
")
print(r^2)

cat("END OF PROBLEM 45----------------------------------------------------------

")

cat("11.46 Test the hypothesis that ρ = 0 in Exercise
11.43 against the alternative that ρ= 0. Use a 0.05
level of significance.
")

cat("Data is
x = Mathematics Grade
y = English Grade
")

n <- 6

x <- c(70, 92, 80, 74, 65, 83)


y <- c(74, 84, 63, 87, 78, 90)


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

cat("

")

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

cat("Correlation coefficient is r = Sxy/sqrt(Sxx*Syy) where Sxx, Syy, and Sxy are

")



Sxx = sum_xS - (1/n)*(sum_x^2)
Syy = sum_yS - (1/n)*(sum_y^2)
Sxy = sum_xy - (1/n)*(sum_y*sum_x)

cat("Sxx = ", Sxx,
 "Syy = ", Syy
,"Sxy = ", Sxy, sep = "\n"
)

cat("So r is
")

r <- Sxy / sqrt(Sxx*Syy)
print(r)
cat("
")
cat("The test statistic is t = (r*sqrt(n-2))/sqrt(1-r^2)

")
t <- (r*sqrt(n-2))/sqrt(1-r^2)
print(t)

cat(" since calculated t is < 2.776 we reject the null hypothesis and conclude that ρ < −0
")
cat("END OF PROBLEM 46----------------------------------------------------------

")


cat("11.61 For a simple linear regression model
Yi = β0 + β1xi +
i, i= 1, 2, . . . , n,
where the
i are independent and normally distributed
with zero means and equal variances σ2, show that ¯ Y
and
B1 =
n
i=1
(xi − ¯x)Yi
n
i=1
(xi − ¯x)2
have zero covariance.

")

cat("Done by hand
")
cat("END OF PROBLEM 61----------------------------------------------------------

")

cat("11.65 Suppose that an experimenter postulates a
model of the type
Yi = β0 + β1x1i +
i, i= 1, 2, . . . , n,
when in fact an additional variable, say x2, also contributes
linearly to the response. The true model is
then given by
Yi = β0 + β1x1i + β2x2i +
i, i= 1, 2, . . . , n.
Compute the expected value of the estimator
B1 =
n
i=1
(x1i − ¯x1)Yi
n
i=1
(x1i − ¯x1)2
.
")


cat("Done by hand
")
cat("END OF PROBLEM 61----------------------------------------------------------

")
