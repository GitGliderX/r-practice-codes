#Part A: Basic Questions
#1.	Create a 3×3×2 array using values 1 to 18.

value1<-1:18
arr3<- array(value1,dim = c(3,3,2))
arr3

#2.	Print only the second layer of the array.

arr3[,,2]

#3.	Access the element at row 3, column 2, layer 1.

arr3[3,2,1]

#Part B: Intermediate Questions
#4.	Create two arrays of size 2×2×2 and perform addition.
value2<-1:8

value2
arr4<- array(value2,dim = c(2,2,2))
arr4
value3<-11:18

arr5<- array(value3,dim = c(2,2,2))
arr5

print("Addition")
arr4[,,1]+arr5[,,2]

#5.	Multiply two arrays and print the result.

print("Multiplication")
arr4*arr5

#6.	Create a 4×3×2 array and calculate the sum across:
value4<- 1:24
arr6<- array(value4,dim = c(4,3,2))
arr6
  #o	rows

apply(arr6,1,sum)

#o	columns

apply(arr6,2,sum)

#o	layers

apply(arr6,3,sum)


#Part C: Advanced Questions
#7.	Create a 3×3×3 array and find:

value5<-1:27
arr7<-array(value5,dim = c(3,3,3))
arr7

  #o	Mean of each layer
apply(arr7,3,mean)

#o	Maximum value in each row
apply(arr7,1,max)

#o	Total sum of all elements
apply(arr7,3,sum)

#8.	Write a program to replace all even numbers in an array with 0.
for (i in 1:dim(arr7)[1]) {
  for (j in 1:dim(arr7)[2]) {
    for (k in 1:dim(arr7)[3]) {
      
      if(arr7[i,j,k]%%2==0)
        arr7[i,j,k]<-0
    }
  }
}

arr7
#9.	Count how many even numbers exist in a 3×4×2 array.

value6<-1:24

arr8<- array(value6,dim = c(3,4,2))
arr8

count<-0
for (i in 1:dim(arr8)[1]) {
  for (j in 1:dim(arr8)[2]) {
    for (k in 1:dim(arr8)[3]) {
      
      if(arr8[i,j,k]%%2==0)
        count<- count+1
    }
  }
}

print(count)

#10.	Write R code to extract all elements greater than mean value of entire array.
mean1<-apply(arr8,3,mean)
print(mean1)

result <- arr8[arr8 > mean1]

print(result)