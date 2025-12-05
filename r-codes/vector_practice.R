intiger1<-c(1L,2L,3L,4L,5L)
print(intiger1)

string1<-c("Avinash","Rohit","Rahul","Virat")
print(string1)

float1<-c(15.2,12.6,17.5,78.2,76.1,52.1,2.6)
print(float1)

#2

vector1=c("Avinash",45)

print(vector1)

vector2=c("Avinash","Rohit","Jacks","Avinash")
print(vector2)

vector3<-c(48,52,65,35,45,48)
print(vector3)

vector4<-c(1,2,3,4,5,6,7,8)

vector4[4]<-10
print(vector4)

#3
x = c(2,4,6)
y = c(1,2,3)
print("Addition")
print(x+y)

print("Substraction")
print(x-y)

print("Multiplication")
print(x*y)

print("Division")
print(x/y)

x1 = c(2,4,6)
y1 = c(1,2)

print("Addition")
print(x1+y1)

print("Substraction")
print(x1-y1)

print("Multiplication")
print(x1*y1)

print("Division")
print(x1/y1)

#4

vector5<-c(78,85,96,41,52,45,7,32,46,15)

print(max(vector5))
print(min(vector5))
print(length(vector5))
print(sum(vector5))
print(mean(vector5))
print(sort(vector5))
print(sort(vector5, decreasing = TRUE))

vector6 = c(100, 200, 300, 400, 500, 600)

print(vector6[2])

print(vector8[c(4,6)])

print(vector6[2:5])

vector7 = c(10,20,30,40,50)

vector7[3]<-100

vector7[6]<-200

vector7[2]<-"abc"

print(vector7)


vector8 = c(10,20,30,40,50,60)

vector8[-4]

vector8[-c(2,5)]

vector8[-1:-6]