# install dplyr package to import csv file
install.packages("dplyr")
#check the dplyr package
library(dplyr)

#import external csv file

getwd()
setwd("D:\\R")
Data=read.csv('Mobile Marketing.csv')

View(Data)

#1.	Filter all sales records where MobileBrand is "Samsung".

var1<-Data %>% filter( MobileBrand == "Samsung")

View(var1)

#2.	Filter customers who purchased
#more than 2 mobiles (Quantity > 2).

var2<-Data %>% filter(Quantity > 2)
View(var2)

#3.	Select only CustomerName, MobileBrand,
#and SalesChannel columns.

var3<-select(Data,CustomerName,MobileBrand,SalesChannel)

View(var3)

#4.	Filter all Online sales from the "North" region.

var4<-Data %>% filter( Region == "North")
View(var4)

#5.	Group by MobileBrand and calculate total quantity 
#sold.

var5<- Data %>% group_by(MobileBrand) %>% 
  summarise(tot_sum = sum(Quantity))

View(var5)

#6.	Find the average unit price of each MobileBrand

var6<- Data %>% group_by(MobileBrand) %>% 
  summarise(average = mean(UnitPrice))

View(var6)

#7.	Show the top 5 sales orders by UnitPrice.
var7<- Data %>% group_by(MobileBrand) %>% 
  arrange(desc(UnitPrice))


#8.	Group by Region and count how many orders were placed.
var8 <- Data %>%
  group_by(Region) %>%
  summarise(counts = n())

View(var8)

#9.	Calculate total revenue (Quantity × UnitPrice × (1 - Discount/100))
#for each order.

var9 <- Data %>% group_by(OrderID) %>%
  summarise(total_revenue= Quantity * UnitPrice * (1 - Discount/100))

View(var9)

#10.Find the total number of mobiles sold (sum(Quantity)) in each
#SalesChannel (Online vs Offline).

var10 <- Data %>% group_by(SalesChannel) %>%
  summarise(total_Solds=sum(Quantity))

View(var10)