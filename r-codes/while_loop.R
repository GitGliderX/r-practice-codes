#1
i<-1

while(i<=10){
  print(i)
  i=i+1
}

#2

num=2

while(num<=20){
  if(num%%2==0){
    print(num)
  }
  num=num+1
}

#3
sum=0
numbers<-1
while(numbers<=10)
{
  sum=sum+numbers
  numbers=numbers+1
}
print(paste("the sum of 1 to 10 is",sum))

#4

count <-10

while(count>=1){
  print(count)
  count = count-1
}

#5

table=560
num3=1

while (num3<=10) {
  print(paste(table," * ",num3," = ",table*num3))
  num3 = num3+1
}

#
strings = "R Language"
i <- 1

while (i <= nchar(strings)){
  print(substr(strings,i,i))
  i <- i + 1
}
#6

number=1
divisible=7

while(number<=divisible){
  if(number%%divisible==0){
    break
  }
  
  number=number+1
}
print(paste(number," is first number divisible by ",divisible))

#7
v <- c(10, 20, 30, 40, 50)
i=1
while ( i<=length(v)) {
  print(v[i])
  i=i+1
}
#8
sum<-0
num <- 12345
while(num > 0)
{
  num<-num%/%10
  sum<-sum+1
}
print(sum)

#9
num <- 123
reverse=0
while(num>0){
  reverse=reverse*10+num%%10
  num=num%/%10
}
print(reverse)