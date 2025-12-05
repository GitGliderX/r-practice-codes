#Matrix Creation & Properties
#1.	Create a matrix with numbers 11 to 20, having 2 rows and 5 columns. Print the matrix.
#2.	Create a matrix with numbers 1 to 12 arranged in 3 rows and 4 columns. Find its dimensions using dim().
#3.	Create a matrix of size 4 × 3 with numbers from 21 to 32. Find the number of rows and columns separately.


m1 <- matrix(11:20,nr=2,nc=5)

m2 <- matrix(1:12,nr=3,nc=4)

m3 <- matrix(21:32,nr=4,nc=3)

print(m1)

print(m2)

print(m3)

#4.	Create a 4×4 matrix with values from 1 to 16. Extract the element at row 2, column 3.
#5.	From the same matrix, extract the entire 1st row.
#6.	From the same matrix, extract the entire 4th column.

m4 <- matrix(1:16,nr=4,nc=4)
m4 [2,3]

m4[1,]

m4[,4]

#Arithmetic Operations
#7.	Create two 3×3 matrices:
#  o	matA <- matrix(2:10, nrow=3, ncol=3)
#o	matB <- matrix(11:19, nrow=3, ncol=3)
#Perform addition, subtraction, multiplication, and division between them.

matA <- matrix(2:10, nrow=3, ncol=3)
matB <- matrix(11:19, nrow=3, ncol=3)

print(matA+matB)

print(matA-matB)

print(matA%*%matB)

print(matA/matB)

print(matA*matB)

#Transpose
#9.	Create a 3×2 matrix with numbers 5 to 10. Find its transpose.

m5 <- matrix(5:10,nr=3,nc=2)
print(m5)
tran <- t(m5)

print(tran)

#Special Matrices
#10.	Create a 6×6 Identity Matrix.

m8 <- diag(1,3,3)

print(m8)

#11.	Create a diagonal matrix with values 2, 4, 6, 8.

m6<- diag(c(2,4,6,8),4,4)

print(m6)
#12.	Create a 3×5 matrix filled with all zeros.

m7<- matrix(0,nr=3,nc=5)
print(m7)

#13.	Create a 2×4 matrix filled with all ones.

m9<- matrix(1,nr=2,nc=4)
print(m9)

#14.	Create a 4×3 matrix with numbers from 1 to 12.

m10<- matrix(1:12,nr=4,nc=3, byrow = TRUE)
print(m10)


#•	Find the sum of each row.
rowSums(m10)


#•	Find the sum of each column.

colSums(m10)
#15.	On the same matrix, use apply() to calculate:
  #•	Mean of each column
apply(m10, 2, mean)
#•	Maximum value of each row
apply(m10,1,max)


