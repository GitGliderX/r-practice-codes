getwd()

dataset2<-read.csv('Products.csv')

View(dataset2)

#📊 5 Easy ggplot2 Tasks (Beginner Level)
#🔹 Task 1: Points Chart (Scatter Plot)
#Task:
#  Create a scatter plot showing Sales vs Quantity.
#Hint:
#  Use geom_point()

ggplot(dataset2,aes(Sales,Quantity))+geom_point(size=3,color="red")

#🔹 Task 2: Points Chart with Color
#Task:
#  Create a scatter plot of Sales vs Quantity, and color the points by Category.
#Hint:
#  Use aes(color = Category)

ggplot(dataset2,aes(x=Sales,y=Quantity,colour =factor(Category)))+geom_point()

#🔹 Task 3: Bar Chart (Count)
#Task:
 # Create a bar chart showing number of orders per Category.
#✅ Use geom_bar()
#❌ Do NOT use geom_col()

ggplot(dataset2,aes(Category))+geom_bar()

#🔹 Task 4: Bar Chart by City
#Task:
#  Create a bar chart showing number of orders in each City.
#Hint:
#  X-axis → City
#Y-axis → Count (default)

ggplot(dataset2,aes(City))+geom_bar()

#🔹 Task 5: Points Chart with Size
#Task:
 # Create a scatter plot of Sales vs Rating, where point size represents Quantity.
#Hint:
 # Use aes(size = Quantity)

ggplot(dataset2,aes(x=Sales,y=Rating,size = factor(Quantity)))+geom_point()


