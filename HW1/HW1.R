#AUTHOR: Eric Becerril-Blas
#PURPOSE: R script for HW 1

sink("/Users/becerrilblas/Github/STATS-412/HW1/HW1.txt") # Overwrite the existing file HW1.txt to empty it

sink("/Users/becerrilblas/Github/STATS-412/HW1/HW1.txt", append=TRUE, split=TRUE) #Start appending output to the .txt file

# Print out name
cat("Eric Becerril-Blas
HW1: 1,2,4,6,7,8,9,12,14
Date: 02/06/20

")

# Print out problem 1
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

cat("STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")

cat("Data is
x = Arm Strength
y = Dynamic lift
")

x <- c(17.3, 19.3, 19.5, 19.7, 22.9, 23.1, 26.4, 26.8, 27.6, 28.1, 28.2, 28.7, 29.0, 29.6, 29.9, 29.9, 30.3, 31.3,36.0,39.5,40.4,44.3,44.6,50.4,55.9)


y <- c(71.7, 48.3, 88.3, 75.0, 91.7, 100.0, 73.3, 65.0, 75.0, 88.3, 68.3, 96.7, 76.7, 78.3, 60.0, 71.7, 85.0, 85.0, 88.3, 100.0, 100.0, 100.0, 91.7, 100.0, 71.7)

data <- cbind(x,y)
print(data)

n <- 25
cat("n = ",n
)


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

sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
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

cat(
"Hence the fitted regression curve y = β0 + β1x is as follows: y =", b0, " + ", b1,"x"
)


cat("

")
cat("STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")

point_estimate = b0 + (b1*30)

cat("
The point estimate of μY |30 is: y = ", b0, "+",b1,"(30) = ", point_estimate
)
cat("

")
cat("STARTING R SOLUTION BELOW FOR PART C:--------------------------------------
")
cat("
Gathering fitted values for y (using the built in lm() function in R) as the following:
")
df=data.frame(x,y)
md1 = lm( y~x , data = df)
fitted(md1)

cat("
Now for the residuals:
")
r =  residuals(md1)
print(r)


cat("

")
cat("Scatterplot:")
png("ResidualVsArmStrength.png", width = 350, height = 350)
plot(x, r, main="Residuals vs Arm Strength",
   xlab="Arm Strength (x) ", ylab="Residuals ",pch = 16,)

dev.off()

cat("End of Problem 1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")
cat("PROBLEM #2: The grades of a class of 9 students on a midterm
report (x) and on the final examination (y) are as follows:
x 77 50 71 72 81 94 96 99 67
y 82 66 78 34 47 85 99 99 68
(a) Estimate the linear regression line.
(b) Estimate the final examination grade of a student
who received a grade of 85 on the midterm report.

")
cat("STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")
n <- 9
x <- c(77, 50, 71, 72, 81, 94, 96, 99, 67)
y <- c(82, 66, 78, 34, 47, 85, 99, 99, 68)
x_squared <- x^2
xy <- x * y
sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
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

cat(
"Hence the fitted regression curve y = β0 + β1x is as follows: y =", b0, " + ", b1,"x"
)
cat("

STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")

point_estimate = b0 + (b1*85)

cat("
The point estimate of μY |30 is: y = ", b0, "+",b1,"(85) = ", point_estimate
)
cat("

")
cat("End of Problem 2 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")

cat("PROBLEM #4: The following data were collected to determine
the relationship between pressure and the corresponding
scale reading for the purpose of calibration.
Pressure, x (lb/sq in.) Scale Reading, y
10                            13
10                            18
10                            16
10                            15
10                            20
50                            86
50                            90
50                            88
50                            88
50                            92
(a) Find the equation of the regression line.
(b) The purpose of calibration in this application is to
estimate pressure from an observed scale reading.
Estimate the pressure for a scale reading of 54 using
ˆx = (54 − b0)/b1.

")
cat("STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")
n <- 10
x <- c(10,10,10,10,10,50,50,50,50,50)
y <- c(13,18,16,15,20,86,90,88,88,92)
x_squared <- x^2
xy <- x * y
sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
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

cat(
"Hence the fitted regression curve y = β0 + β1x is as follows: y =", b0, " + ", b1,"x"
)
cat("

STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")
est_pre = (54 - b0) / b1
cat("
Estimated pressure for a scale reading of 54 is: (54- b0)/b1 = ", est_pre)
cat("

")

cat("End of Problem 4 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")

cat("PROBLEM #6: In a certain type of metal test specimen, the normal
stress on a specimen is known to be functionally
related to the shear resistance. The following is a set
of coded experimental data on the two variables:
Normal Stress, x Shear Resistance, y
26.8                  26.5
25.4                  27.3
28.9                  24.2
23.6                  27.1
27.7                  23.6
23.9                  25.9
24.7                  26.3
28.1                  22.5
26.9                  21.7
27.4                  21.4
22.6                  25.8
25.6                  24.9
(a) Estimate the regression line μY |x = β0 + β1x.
(b) Estimate the shear resistance for a normal stress of
24.5.
")
cat("STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")
n <- 12
x <- c(26.8, 25.4, 28.9, 23.6, 27.7, 23.9, 24.7, 28.1, 26.9, 27.4, 22.6, 25.6)
y <- c(26.5, 27.3, 24.2, 27.1, 23.6, 25.9, 26.3, 22.5, 21.7, 21.4, 25.8, 24.9)
x_squared <- x^2
xy <- x * y
sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
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

cat(
"Hence the fitted regression curve y = β0 + β1x is as follows: y =", b0, " + ", b1,"x"
)
cat("

STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")
point_estimate = b0 + (b1*24.5)

cat("
The shear resistance for a normal stress of24.5.: y = ", b0, "+",b1,"(24.5) = ", point_estimate
)
cat("

")
cat("End of Problem 6 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")


cat("PROBLEM #7: The following is a portion of a classic data set
called the “pilot plot data” in Fitting Equations to
Data by Daniel and Wood, published in 1971. The
response y is the acid content of material produced by
titration, whereas the regressor x is the organic acid
content produced by extraction and weighing.
y    x     |  y       x
76   123      70      109
62   55       37      48
66   100      82      138
58   75       88      164
88   159      43      28



(a) Plot the data; does it appear that a simple linear
regression will be a suitable model?
(b) Fit a simple linear regression; estimate a slope and
intercept.
(c) Graph the regression line on the plot in (a).
")
cat("
STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")

x <- c(123, 55, 100, 75, 159, 109, 48, 138, 164, 28)
y <- c(76, 62, 66, 58, 88, 70, 37, 82, 88, 43)
png("acid.png", width = 350, height = 350)
plot(x, y, main="Organic Acid vs Acid Content",
   xlab="Organic Acid (x) ", ylab="Acid Content (y) ",pch = 16,)

dev.off()

cat("A linear regression model will be suitable for this

")
cat("
STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")
n = 10
x_squared <- x^2
xy <- x * y
sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
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

cat(
"Hence the fitted regression curve y = β0 + β1x is as follows: y =", b0, " + ", b1,"x"
)

png("acidReg.png", width = 350, height = 350)
plot(x, y, main="Organic Acid vs Acid Content",
   xlab="Organic Acid (x) ", ylab="Acid Content (y) ",pch = 16,)
abline(lm(y ~ x))

dev.off()
cat("

End of Problem 7 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")

cat("
PROBLEM #8: A mathematics placement test is given to all entering
freshmen at a small college. A student who receives
a grade below 35 is denied admission to the regular
mathematics course and placed in a remedial class.
The placement test scores and the final grades for 20
students who took the regular course were recorded.
(a) Plot a scatter diagram.
(b) Find the equation of the regression line to predict
course grades from placement test scores.
(c) Graph the line on the scatter diagram.
(d) If 60 is the minimum passing grade, below which
placement test score should students in the future
be denied admission to this course?
Placement Test Course Grade
50                  53
35                  41
35                  61
40                  56
55                  68
65                  36
35                  11
60                  70
90                  79
35                  59
90                  54
80                  91
60                  48
60                  71
60                  71
40                  47
55                  53
50                  68
65                  57
50                  79

")
cat("
STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")
n <- 20
x <- c(50, 35, 35, 40, 55, 65, 35, 60, 90, 35, 90, 80, 60, 60, 60, 40, 55, 50, 65, 50)
y <- c(53, 41, 61, 56, 68, 36, 11, 70, 79, 59, 54, 91, 48, 71, 71, 47, 53, 68, 57, 79)
png("CourseGrade.png", width = 350, height = 350)
plot(x, y, main="Course Grade vs Placement Test",
   xlab="Placement Test (x) ", ylab="Course Grade (y) ",pch = 16,)

dev.off()


cat("
STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")
x_squared <- x^2
xy <- x * y
sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
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

cat(
"Hence the fitted regression curve y = β0 + β1x is as follows: y =", b0, " + ", b1,"x"
)
png("CourseGradeReg.png", width = 350, height = 350)
plot(x, y, main="Course Grade vs Placement Test",
   xlab="Placement Test (x) ", ylab="Course Grade (y) ",pch = 16,)
abline(lm(y ~ x))

dev.off()
cat("

STARTING R SOLUTION BELOW FOR PART C:--------------------------------------
")
est_pre = (60 - b0) / b1
cat("
60 is the minimum passing grade: (54- b0)/b1 = ", est_pre)
cat("

")
cat("

End of Problem 8 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")


cat("PROBLEM #9: A study was made by a retail merchant to determine
the relation between weekly advertising expenditures
and sales.
Advertising Costs ($) Sales ($)
40                       385
20                       400
25                       395
20                       365
30                       475
50                       440
40                       490
20                       420
50                       560
40                       525
25                       480
50                       510
(a) Plot a scatter diagram.
(b) Find the equation of the regression line to predict
weekly sales from advertising expenditures.
(c) Estimate the weekly sales when advertising costs
are $35.
(d) Plot the residuals versus advertising costs. Comment.

")
cat("
STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")
n <- 12
x <- c(40,20,25,20,30,50,40,20,50,40,25,50)
y <- c(385,400,395,365,475,440,490,420,560,525,480,510)

png("Sales.png", width = 350, height = 350)
plot(x, y, main="Sales vs Advertising Costs",
   xlab="Advertising Costs (x) ", ylab="Sales (y) ",pch = 16,)
abline(lm(y ~ x))
dev.off()

cat("
STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")
x_squared <- x^2
xy <- x * y
sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
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

cat(
"Hence the fitted regression curve y = β0 + β1x is as follows: y =", b0, " + ", b1,"x"
)

cat("
STARTING R SOLUTION BELOW FOR PART C:--------------------------------------
")

point_estimate = b0 + (b1*35)

cat("
The point estimate of μY |35 is: y = ", b0, "+",b1,"(35) = ", point_estimate
)
cat("

")
cat("
STARTING R SOLUTION BELOW FOR PART D:--------------------------------------
")
df=data.frame(x,y)
md1 = lm( y~x , data = df)
fitted(md1)

cat("
Now for the residuals:
")
r =  residuals(md1)
print(r)


cat("

")
cat("Scatterplot:")
png("ResidualVsAdvertisingCost.png", width = 350, height = 350)
plot(x, r, main="Residuals vs Advertising Costs",
   xlab="Advertising Costs (x) ", ylab="Residuals ",pch = 16,)
abline(lm(r ~ x))
dev.off()


cat("

End of Problem 9 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")


cat("PROBLEM#12 A study was done to study the effect of ambient
temperature x on the electric power consumed by
a chemical plant y. Other factors were held constant,
and the data were collected from an experimental pilot
plant.
y (BTU) x (◦F) y (BTU) x (◦F)
250 27 265 31
285 45 298 60
320 72 267 34
295 58 321 74
(a) Plot the data.
(b) Estimate the slope and intercept in a simple linear
regression model.
(c) Predict power consumption for an ambient temperature
of 65
◦
F.
")
cat("
STARTING R SOLUTION BELOW FOR PART A:--------------------------------------
")
n <- 8
x <- c(27,45,72,58,31,60,34,74)
y <- c(250,285,320,295,265,298,267,321)

png("BTU.png", width = 350, height = 350)
plot(x, y, main="BTU vs X",
   xlab=" x (◦F) ", ylab=" y (BTU) ",pch = 16,)
abline(lm(y ~ x))
dev.off()

cat("
STARTING R SOLUTION BELOW FOR PART B:--------------------------------------
")
x_squared <- x^2
xy <- x * y
sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
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

cat(
"Hence the fitted regression curve y = β0 + β1x is as follows: y =", b0, " + ", b1,"x"
)
cat("
STARTING R SOLUTION BELOW FOR PART C:--------------------------------------
")

point_estimate = b0 + (b1*65)

cat("
The point estimate of μY |65 is: y = ", b0, "+",b1,"(65) = ", point_estimate
)
cat("

")
cat("

End of Problem 12 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

")

cat("PROBLEM #14: A professor in the School of Business in a university
polled a dozen colleagues about the number of
professional meetings they attended in the past five
years (x) and the number of papers they submitted
to refereed journals (y) during the same period. The
summary data are given as follows:
n = 12, ¯x = 4, ¯y = 12,
n
i=1
x2i
= 232,
n
i=1
xiyi = 318.
Fit a simple linear regression model between x and y by
finding out the estimates of intercept and slope. Comment
on whether attending more professional meetings
would result in publishing more papers.
")
cat("
STARTING R SOLUTION BELOW :--------------------------------------
")
n <- 12
x_squared <- 232
xy <- 318
sum_x <- sum(x)
sum_y <- sum(y)
sum_xS <- sum(x_squared)
sum_xy <- sum(xy)
cat("Sum(x) = ", sum_x,
 "Sum(y) = ", sum_y
,"Sum(xy) = ", sum_xy
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

cat(
"Hence the fitted regression curve y = β0 + β1x is as follows: y =", b0, " + ", b1,"x"
)
