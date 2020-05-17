# 11.52
#---------------------------------------------------------------
#Good for linear regression
#https://www.chegg.com/homework-help/Probability-and-Statistics-for-Engineers-and-Scientists-9th-edition-chapter-11-problem-52RE-solution-9780321629111
# Print out problem 1
cat("11.52 An experiment was designed for the Department
of Materials Engineering at Virginia Tech to
study hydrogen embrittlement properties based on
electrolytic hydrogen pressure measurements. The so
lution used was 0.1 N NaOH, and the material was a
certain type of stainless steel. The cathodic charging
current density was controlled and varied at four levels.
The effective hydrogen pressure was observed as
the response. The data follow:

Run
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
Charging Current Density x ( mA/cm2)
0.5
0.5
0.5
0.5
1.5
1.5
1.5
2.5
2.5
2.5
2.5
3.5
3.5
3.5
3.5
Effective Hydrogen Pressure, y (atm)
86.1
92.1
64.7
74.7
223.6
202.1
132.9
413.5
231.5
466.7
365.3
493.7
382.3
447.2
563.8

(a) Run a simple linear regression of y against x.
(b) Compute the pure error sum of squares and make
a test for lack of fit.
(c) Does the information in part (b) indicate a need
for a model in x beyond a first-order regression?
Explain.
")

x <- c(0.5, 0.5, 0.5, 0.5, 1.5, 1.5, 1.5, 2.5, 2.5, 2.5, 2.5, 3.5, 3.5, 3.5, 3.5)

y <- c(86.1, 92.1, 64.7, 74.7, 223.6, 202.1, 132.9, 413.5, 231.5, 466.7, 365.3, 493.7, 382.3, 447.2, 563.8)
# http://r-statistics.co/Linear-Regression.html

df <- data.frame(x,y)

print(df)

linearMod <- lm(y ~ x, data=df)  # build linear regression model on full data
print(linearMod)


# 11.58
#---------------------------------------------------------------
# Good for least square elements

# 12.68
#---------------------------------------------------------------
# Fit model to given data
cat("Pressure Dipping Oil Recovery
(lb/in2), x1 Angle, x2 (%), y
1000
1000
1000
1500
1500
1500
2000
2000
2000

0
15
30
0
15
30
0
15
30

60.58
72.72
79.99
66.83
80.78
89.78
69.18
80.31
91.99
")

x1 <- c(1000, 1000, 1000, 1500, 1500, 1500, 2000, 2000, 2000)

x2 <- c(0, 15, 30, 0, 15, 30, 0, 15, 30)

x11 <- x1 * x1

x22 <- x2*x2
x12 <- x1*x2

y <- c(60.58, 72.72, 79.99, 66.83, 80.78, 89.78, 69.18, 80.31, 91.99)

df <- data.frame(x1,x2,y,x11,x22,x12)

linearMod <- lm(y ~ x1 + x2 + x11 + x22 + x12 , data=df)  # build linear regression model on full data
print(linearMod)

# 13.46() ------------------------------------------------- Anova example
control <- c(32.68, 36.22, 36.36, 40.95, 34.99, 33.89)
uaf <- c(35.90,38.73,37.55,34.64,37.36,34.35)
am <- c(49.43,53.50,52.86,45.00,47.20,49.76)
ut <- c(46.58,42.82,45.41,45.08,43.81,47.40)

df <- data.frame(control, uaf, am, ut)
print(df)

mylm <- lm(control ~  uaf + am + ut, data = df)
anova(mylm)


cat("
A0.50    0.42    0.65    0.47    0.44B0.42    0.40    0.73    0.47    0.69C1.06    0.82    0.72    0.72    0.82

")

a <- c(0.50  ,0.42,    0.65,    0.47,    0.44)
b <- c(0.42  ,  0.40  ,  0.73,    0.47,    0.69)
cc <- c(1.06,    0.82,    0.72 ,   0.72 ,   0.82)

print(sd(a)*sd(a))
print(sd(b)*sd(b))
print(sd(cc)*sd(cc))


cat("
240
236
290
274
301
316
300
296
267
276
288
261

")

y <- c(240,236,
290,
274,
301,
316,
300,
296,
267,
276,
288,
261)
x1 <- c(25,
31,
45,
60,
65,
72,
80,
84,
75,
60,
50,
38)
x2 <- c(24,
21,
24,
25,
25,
26,
25,
25,
24,
25,
25,
23)
x3 <- c(91,
90,
88,
87,
91,
94,
87,
86,
88,
91,
90,
89)
x4 <- c(100,95,110,88,94,99,97,96,110,105,100,98)

df <- data.frame(x1,x2,y,x3,x4)

linearMod <- lm(y ~ x3 + x4, data=df)  # build linear regression model on full data

print(linearMod)
qpcR::PRESS(linearMod)
