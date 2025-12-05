#10 DataFrame Tasks (based on products)
#Task 1:
 # Create a dataframe named orders with 5 rows and the following columns:
#  •	OrderID
#•	CustomerName
#•	ProductName
#•	Quantity

orders <- data.frame(OrderID = c(1,2,3,4,5),
                     CustomerName = c("Avinash","Aakash","Chinmay","Om","Prasad"),
                     ProductName = c("Iphone","Laptop","SmartWatch","TV","Headphone"),
                     Quantity = c(5,4,6,4,3))

print(orders)

#Create a dataframe named orders with 5 rows and the following columns:
 # •	ProductID 
#•	ProductName 
#•	Price 
#•	Stock

orders1 <- data.frame(product_id = c(1,2,3,4,5),
                     ProductName = c("Iphone","Laptop","SmartWatch","TV","Headphone"),
                     Price = c(50000,60000,40000,20000,25000),
                     Stock = c(5,3,4,6,7))

print(orders1)

#From the given products dataframe, print only the ProductName column using 
#column indexing.

print(orders1[,2])

#From the products dataframe, extract rows 2 to 5 with only columns 
#ProductName and Price.

print(orders1[2:5,2:3])

#Using row & column indexing, print the Price of the 4th product.

print(orders1[4,3])

#Add a new product in the products dataframe using rbind().
#(Example: ProductID=107, ProductName="Headphones", Price=2500, Stock=50)

new_pro<- data.frame(product_id=107, ProductName="Headphones", Price=2500, Stock=50)

orders1<-rbind(orders1,new_pro)
print(orders1)

#Add a new column named "Category" to the products dataframe 
#(Example: "Electronics", "Accessories", etc.) using cbind().

orders1$Category<- c("Electronics", "Accessories","Fashion","Sports","Skincare","grocery")

print(orders1)

#Use str() to display the structure of the updated products dataframe.

str(orders1)

#Use summary() to get the statistical details of the Price and Stock columns.

summary(orders1)

#Task 9:
#  Find out:
  #•	Total number of rows using nrow()
print(nrow(orders1))
#•	Total number of columns using ncol()
print(ncol(orders1))
#•	Names of all columns using colnames()

print(colnames(orders1))

#Print the first 3 rows of the dataframe using head() and 
#the last 2 rows using tail().
print(head(orders1,3))

print(tail(orders1,2))
