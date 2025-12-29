getwd()
setwd("D:\\R")
dataset1<-read.csv('pizza_dataset.csv')


View(dataset1)

#1. find out Daily Orders Trend.

q1<- dataset1 %>% group_by(order_date) %>% summarise(total_orders=n())

View(q1)

ggplot(q1, aes(x = order_date, y = total_orders)) +
  geom_line() +
  labs(
    title = "Daily Orders Trend",
    x = "Date",
    y = "Number of Orders"
  )
#2. Display City wise Revenue.

ggplot(dataset1,aes(city,total_amount))+geom_bar(stat = "identity",fill="red",)+labs(
  title = "City vs Revenue",
  x="City",
  y="Revenue"
)

#3. Display Category wise(Veg vs Non-Veg Orders) orders.

q3a<- dataset1%>% filter(category=="Veg") %>% group_by(category) %>% summarise(counts=n())
View(q3a)

q3b<- dataset1%>% filter(category=="Non-Veg") %>% group_by(category) %>% summarise(counts=n())
View(q3b)


ggplot(dataset1,aes(category))+geom_bar(fill=c("red","green"))

#4. Find Size Preference by Category (Facet).

ggplot(dataset1,aes(size,fill = size))+geom_bar()+facet_wrap(~category)

#5. Find out Delivery Time vs Customer Rating.

ggplot(dataset1, aes(delivery_time, customer_rating)) +
  geom_point() +
  labs(
    title = "Delivery Time vs Customer Rating",
    x = "Delivery Time",
    y = "Customer Rating"
  )

names(dataset1)
