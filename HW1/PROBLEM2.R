#AUTHOR: Eric Becerril-Blas
#PURPOSE: This is the R script for problem 11.2
#PROBLEM: The grades of a class of 9 students on a midterm
#	  report (x) and on the final examination (y) are as follows:
#	  x 77 50 71 72 81 94 96 99 67
#	  y 82 66 78 34 47 85 99 99 68
#	  (a) Estimate the linear regression line.
#	  (b) Estimate the final examination grade of a student
#	  who received a grade of 85 on the midterm report.

#print("Solving for Part A:")

n = 9

#cat("n is equal to: ",n)


x <- c(77,50,71,72,81,94,96,99,67)

#print(x)

y <- c(82,66,78,34,47,85,99,99,68)

#print(y)

#print(sum(x))

#print(sum(y))


cat(paste("Solution for Part A:",
           "n is equal to:",
           n ,
           "x is equal to: ",
           x,
           sep="\n"))
