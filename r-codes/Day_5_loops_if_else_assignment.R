#1
a<- 5

if(a>0)
{
  print("A is positive")
}else if(a<0)
{
  print("A is negative")
}else
{
  print("A is ZERO")
}

marks= 42

if(marks>=40)
{
  print('Pass')
}else{
  print("fail")
}

num=1:20

for(i in num){
  if(i%%2==0){
    print(paste(i," is even"))
  }else{
    print(paste(i," is ODD"))
  }
}
sum=0
num1<-1:10

for(i in num1){
  sum=sum+i
}
print(sum)

age = 15

if(age>=18)
{
  print("you are eligible")
}else{
  print("you are not eligible")
}

marks1=78

if(marks1 >=90 && marks1 <=100)
{
  print("A")
}else if(marks1 >=75 && marks1 <=89)
{
  print("B")
}else if(marks1>=60 && marks1 <=74)
{
  print("C")
}else if(marks1 < 60)
{
  print("D")
}
count=0
vec <- c(3,5,9,12,20,21,22,30)

for (i in vec) {
  if(i%%3 ==0){
    count=count+1
  }
  
}
print(count)

vec1<-c(1,2,3,4,5,6,7,8,9,10)
for (i in vec1) {
  print(i*i)
  
}

nums <- c(12, 17, 25, 28, 31, 42, 55)
even=()
odd=()
for (i in nums) {
  if(i%%2==0){
    even(i)
  }else{
    odd(i)
  }
}
print(even)
print(odd)
