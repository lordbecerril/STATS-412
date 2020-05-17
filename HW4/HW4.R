# 12.19
cat("STARTING R SOLUTION BELOW FOR 12.19:--------------------------------------
")
mydata.data <- data.frame(
  y = c(240, 236, 290, 274, 301, 316, 300, 296, 267, 276, 288, 261),
  x1 = c(25,31,45,60,65,72,80,84,75,60,50,38),
  x2 = c(24,21,24,25,25,26,25,25,24,25,25,23),
  x3 = c(91,90,88,87,91,94,87,86,88,91,90,89),
  x4 = c(100,95,110,88,94,99,97,96,110,105,100,98)
)

print(mydata.data)

# Multiple Linear Regression Example
fit <- lm(y ~ x1 + x2 + x3 + x4, data = mydata.data)
summary(fit)

cat("STARTING R SOLUTION BELOW FOR 12.43:--------------------------------------
")

mydata.data <- data.frame(
  y = c(193, 172,113,230,91,125),
  x1 = c(1.6, 22.0, 33.0,15.5,43.0,40.0),
  x2 = c(851,1058,1357,816,1201,1115)
)

print(mydata.data)

# Multiple Linear Regression Example
fit <- lm(y ~ x1 + x2, data = mydata.data)
summary(fit)


cat("STARTING R SOLUTION BELOW FOR 12.45:--------------------------------------
")

mydata.data <- data.frame(
  y = c(193, 172,113,230,91,125),
  x1 = c(1.6, 22.0, 33.0,15.5,43.0,40.0),
  x2 = c(851,1058,1357,816,1201,1115)
)

print(mydata.data)

# Multiple Linear Regression Example
fit <- lm(y ~ x1 + x2, data = mydata.data)
summary(fit)



MPG Car Type Odometer Octane
34.5 sedan 75,000 87.5
33.3 sedan 60,000 87.5
30.4 sedan 88,000 78.0
32.8 sedan 15,000 78.0
35.0 sedan 25,000 90.0
29.0 sedan 35,000 78.0
32.5 sedan 102,000 90.0
29.6 sedan 98,000 87.5
16.8 van 56,000 87.5
19.2 van 72,000 90.0
22.6 van 14,500 87.5
24.4 van 22,000 90.0
20.7 van 66,500 78.0
25.1 van 35,000 90.0
18.8 van 97,500 87.5
15.8 van 65,500 78.0
17.4 van 42,000 78.0
15.6 SUV 65,000 78.0
17.3 SUV 55,500 87.5
20.8 SUV 26,500 87.5
22.2 SUV 11,500 90.0
16.5 SUV 38,000 78.0
21.3 SUV 77,500 90.0
20.7 SUV 19,500 78.0
24.1 SUV 87,000 90.0
