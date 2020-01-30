#AUTHOR: Eric Becerril-Blas
#PURPOSE:

sink("/Users/becerrilblas/Github/STATS-412/HW1/HW1.txt") # Overwrite the existing file HW1.txt to empty it

sink("/Users/becerrilblas/Github/STATS-412/HW1/HW1.txt", append=TRUE, split=TRUE)

cat("Eric Becerril-Blas
HW1: 1,2,4,6,7,8,9,12,14
Date: 02/06/20

")

cat("PROBLEM#1: A study was conducted at Virginia Tech to determine
if certain static arm-strength measures have
an influence on the “dynamic lift” characteristics of an
individual. Twenty-five individuals were subjected to
strength tests and then were asked to perform a weightlifting
test in which weight was dynamically lifted overhead.
(a) Estimate β0 and β1 for the linear regression curve
μY |x = β0 + β1x.
(b) Find a point estimate of μY |30.
(c) Plot the residuals versus the x’s (arm strength).
Comment.

")

cat("STARTING R SOLUTION BELOW
")

cat("Data is
x = Arm Strength
y = Dynamic lift
")

x <- c(17.3, 19.3, 19.5, 19.7, 22.9, 23.1, 26.4, 26.8, 27.6, 28.1, 28.2, 28.7, 29.0, 29.6, 29.9, 29.9, 30.3, 31.3,36.0,39.5,40.4,44.3,44.6,50.4,55.9)


y <- c(71.7, 48.3, 88.3, 75.0, 91.7, 100.0, 73.3, 65.0, 75.0, 88.3, 68.3, 96.7, 76.7, 78.3, 60.0, 71.7, 85.0, 85.0, 88.3, 100.0, 100.0, 100.0, 91.7, 100.0, 71.7)

data <- cbind(x,y)
print(data)
