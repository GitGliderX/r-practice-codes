v1<-1:10

arr1<-array(v1,dim=c(2,2))
arr1

v2<-1:40

arr2<-array(v2,dim=c(3,3,3))
arr2

#specific layer

arr2[,,2]

#Specific row

arr2[2,,2]

#specific column

arr2[,2,2]

#specific element
arr2[2,2,2]

#sum of diagonal element

arr2[1,1,2]+arr2[2,2,2]+arr2[3,3,2]
