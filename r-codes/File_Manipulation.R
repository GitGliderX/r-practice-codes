
getwd()

setwd("D:\\R")

dataset<-read.csv('amazon_orders.csv')

View(dataset)

#Level 1: SELECT (Column Selection)
#1.	Select only OrderID, OrderDate, CustomerName, TotalAmount.
names(dataset)
d1<-dataset[c(1,2,4,14)]
d1
#2.	Select ProductCategory, ProductName, Quantity, UnitPrice.
d2<-dataset[c(5:8)]
d2
#3.	Select all columns related to location (City, State, Region).

d3<-dataset %>% select(City:Region)
View(d3)

#4.	Rename TotalAmount as Total_Sales while selecting.

d4<-dataset %>% select(Total_Sales = TotalAmount)
View(d4)
#5.	Select all columns except PaymentMethod.

d5<-select(dataset,-PaymentMethod)
View(d5)

#🟢 Level 2: FILTER (Row Filtering)
#6.	Filter orders where Region is "North".
d6<-dataset %>% filter(Region=="North")
View(d6)
#7.	Filter orders with Quantity > 2.
d7<-dataset %>% filter(Quantity>2)
View(d7)
#8.	Filter orders where PaymentMethod = "UPI".
d8<-dataset %>% filter(PaymentMethod=="UPI")
View(d8)
#9.	Filter orders with TotalAmount > 50000.
d9<- dataset %>% filter(TotalAmount > 50000)
View(d9)

#10.	Filter orders where OrderStatus = "Delivered".
d10<- dataset %>% filter(OrderStatus =="Delivered")
View(d10)

#🟢 Level 3: GROUP BY + SUMMARISE
#11.	Find total sales by ProductCategory.
d11<-dataset %>% group_by(ProductCategory) %>% summarise(Total_Sales=sum(TotalAmount))
View(d11)

#12.	Find total quantity sold by Region.

d12<-dataset %>% group_by(Region) %>% summarise(Total_quantity_sold=sum(Quantity))
View(d12)

#13.	Calculate average order value per City.

d13 <- dataset %>% group_by(City) %>% summarise(Average_Order=mean(TotalAmount))
View(d13)

#14.	Count number of orders per PaymentMethod.
d14<-dataset %>% group_by(PaymentMethod) %>% summarise(no_of_orders=n())
View(d14)

#15.	Find maximum TotalAmount per State.
d15<-dataset %>% group_by(State) %>% summarise(Max_Amount=max(TotalAmount))
View(d15)

#🟢 Level 4: GROUP BY with Multiple Columns
#16.	Find total sales by Region and ProductCategory.
d16<- dataset %>% group_by(Region, ProductCategory)%>%summarise(TotalSales = sum(TotalAmount))
View(d16)

#17.	Find total quantity sold by ProductName and City.

d17<- dataset %>% group_by(City, ProductName) %>% summarise(total_Quantity_sold=sum(Quantity))
View(d17)

#18.	Calculate average UnitPrice by ProductCategory and PaymentMethod.

d18<- dataset %>% group_by(ProductCategory, PaymentMethod) %>% summarise(avg_unitprice=mean(UnitPrice))
View(d18)

#19.	Count orders by OrderStatus and Region.

d19<- dataset %>% group_by(OrderStatus, Region) %>% summarise(orders_count=n())
View(d19)

#20.	Find total sales by State and City.

d20<- dataset %>% group_by(State,City) %>% summarise(total_sales=sum(TotalAmount))
View(d20)

#🟢 Level 5: ARRANGE (Sorting)
#21.	Arrange orders by TotalAmount (descending).
d21<- dataset %>% arrange(desc(TotalAmount))
View(d21)

#22.	Arrange products by Quantity sold (ascending).
d22<- dataset %>%group_by(ProductName)%>% summarise(total_Quantity=sum(Quantity)) %>% arrange(total_Quantity)
View(d22)

#23.	Arrange cities by average sales (descending).

d23<- dataset %>% group_by(City) %>% summarise(avg_sales=mean(TotalAmount)) %>% arrange(desc(avg_sales))
View(d23)

#24.	Arrange states by total sales (descending).

d24<- dataset %>% group_by(State) %>% summarise(Total_sales=sum(TotalAmount)) %>% arrange(desc(Total_sales))
View(d24)

#25.	Arrange customers by number of orders.

d25<- dataset %>% group_by(CustomerName) %>% summarise(number_of_orders=n()) %>% arrange(desc(number_of_orders))
View(d25)

#🟢 Level 6: MUTATE (Create New Columns)
#26.	Create a column Discount = TotalAmount * 0.10.

dataset<- dataset %>% mutate(Discount = TotalAmount*0.10)
View(dataset)

#27.	Create a column FinalAmount = TotalAmount - Discount.

dataset<- dataset %>% mutate(FinalAmount = TotalAmount- Discount)
View(dataset)

#28.	Create a column OrderValueType
#•	"High" if TotalAmount > 50000
#•	"Medium" if 20000–50000
#•	"Low" otherwise

dataset <- dataset %>%
  mutate(
    OrderValueType = case_when(
      TotalAmount > 50000 ~ "High",
      TotalAmount >= 20000 & TotalAmount <= 50000 ~ "Medium",
      TRUE ~ "Low"
    )
  )

View(dataset)



#29.	Create a column DeliveryDays = DeliveryDate - OrderDate.

dataset <- dataset %>% mutate(
  DeliveryDate=as.Date(DeliveryDate),
  OrderDate=as.Date(OrderDate),
  DeliveryDays= DeliveryDate - OrderDate)

View(dataset)

#30.	Create a column BulkOrder (Yes if Quantity > 3 else No).

dataset <- dataset %>% mutate(BulkOrder = case_when(
  Quantity > 3 ~ "Yes",
  TRUE ~ "No"
))

View(dataset)

#🟢 Level 7: Combined Operations (Very Important)
#31.	Filter Delivered orders, group by Region, and find total sales.

d31<- dataset %>% filter(OrderStatus == "Delivered")%>% group_by(Region) %>% summarise(TotalSales=sum(TotalAmount))
View(d31)

#32.	Filter Electronics category, group by City, and calculate average sales.

d32<- dataset %>% filter(ProductCategory=="Electronics") %>% group_by(City) %>% summarise(average_sales=mean(TotalAmount))
View(d32)

#33.	Group by CustomerName and find total orders and total spending.

d33<- dataset %>% group_by(CustomerName) %>% summarise(TotalOrders=n(),TotalSpending=sum(TotalAmount))
View(d33)

#34.	Filter UPI payments, group by State, and count orders.

d34<- dataset %>% filter(PaymentMethod=="UPI") %>% group_by(State) %>% summarise(OrdersCount=n())
View(d34)

#35.	Find top 5 cities by total sales
d35<- dataset %>%group_by(City)%>% summarise(TotalSales=sum(TotalAmount))%>% arrange(desc(TotalSales)) %>% slice_head(n=5)
View(d35)

#🎯 Bonus Practice (Interview / Exam Style)
#36.	Find the region with highest total sales.
d36<- dataset %>% group_by(Region) %>% summarise(TotalSales=sum(TotalAmount)) %>% arrange(desc(TotalSales)) %>% slice_head(n=1)
View(d36)

#37.	Find the most sold product by quantity.
d37<- dataset %>% group_by(ProductName) %>% summarise(QuantitySold=max(Quantity)) %>% arrange(desc(QuantitySold)) %>% slice_head(n=1)
View(d37)

#38.	Find the payment method generating maximum revenue.

d38<- dataset %>% group_by(PaymentMethod) %>% summarise(revenue=max(TotalAmount))%>% arrange(desc(revenue)) %>% slice_head(n=1)
View(d38)

#39.	Find the city with highest average order value.
d39<- dataset %>% group_by(City) %>% summarise(AverageOrderValue=mean(TotalAmount)) %>% arrange(desc(AverageOrderValue)) %>% slice_head(n=1)
View(d39)

#40.	Find the product category with lowest total sales.
d40 <- dataset %>% group_by(ProductCategory) %>% summarise(TotalSales=sum(TotalAmount)) %>% arrange(TotalSales) %>% slice_head(n=1)
View(d40)
