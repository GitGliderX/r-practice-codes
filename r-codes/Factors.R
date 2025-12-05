#                     ----------Factors-----------
#1️⃣ Create a Factor
#Task:
#  Create a vector of fruits: c("Apple", "Mango", "Banana", "Mango", "Apple")
#Convert it into a factor.
fruits<- c("Apple", "Mango", "Banana", "Mango", "Apple")

Fruits <- factor(fruits)

#Print:
  #•	The factor
print(Fruits)
#•	Levels of the factor
print(levels(Fruits))

#2️⃣ Change Factor Levels
#Task:
  #Given the factor:

colors <- factor(c("Red", "Blue", "Green", "Blue"))
#Rename the levels to:
  #•	Red → "R"
#•	Blue → "B"
#•	Green → "G"
levels(colors) <- c("R","B","G")


#Print the updated factor.

print(levels(colors))

print(colors)

#3️⃣ Check if a Variable is a Factor
#Task:
#Given 
gender <- c("Male", "Female", "Male", "Male")
#Check:
  #•	Is it a factor?
print(is.factor(gender))

  #•	Convert it into a factor

f_gender <- factor(gender)

#•	Re-check

print(is.factor(f_gender))


#4️⃣ Ordered Factor (Very Important)
#Task:
  #Create a factor for student grades:
  
grades <- c("C", "A", "B", "A", "C")

#Convert it to ordered factor with levels:
#  C < B < A

f_grades <- factor(grades,
                   levels = c("C","B","A"),
                   ordered = TRUE)
#Then:
  #•	Print the factor

print(f_grades)
#•	Print levels

print(levels(f_grades))

#•	Compare if "A" > "B"

print("A">"B")

#5️⃣ Count Frequency of Each Level
#Task:
  #Given:
dept <- factor(c("IT", "HR", "Finance", "IT", "HR", "IT"))
#Find:
  #•	How many employees in each department (use table())
table(dept)

#6️⃣ Add a New Level to Factor
#Task:
  #Given:
city <- factor(c("Pune", "Mumbai", "Delhi"))

levels(city) <- c(levels(city), 'Nagpur')

city
#Add one more value: "Nagpur"
#(Hint: factors don’t allow values outside levels → you must modify levels first)


#7️⃣ Convert Factor → Character → Numeric
#Task:
  #Given factor:
  
f <- factor(c(10, 20, 30, 20))
#Convert:
 # 1.	Factor → character

f_char<- as.character(f)
print(f_char)
#2.	Character → numeric

f_num<- as.numeric(f)

#Show the difference between:
  #•	as.numeric(f)
print(f_num)
#•	as.numeric(as.character(f))

f_char_num<-as.numeric(f_char)
print(f_char_num)

#8️⃣ Factor in Data Frame
#Task:
  #Create a data frame:
  #Name	Gender
#Amit	Male
#Riya	Female
#John	Male

df<-data.frame(Name<- c("Amit","Riya","John"),
               Gender<-c("Male","Female","Male"))

#Convert the Gender column into a factor.

f1<-factor(df$Gender)

#Print:
  #•	Structure of dataframe (str())
str(df)

#•	Levels of gender

print(levels(f1))

#9️⃣ Drop Unused Levels
#Task:
  #Given:
animals <- factor(c("Dog", "Cat", "Dog", "Cow"))
animals1 <- animals[animals != "Cat"]
animals1 <- droplevels(animals1)
animals1
#Remove "Cat" rows.


#Then drop unused factor level "Cat" (use droplevels()).


#🔟 Sort an Ordered Factor
#Task:
 # Given:
sizes <- factor(c("M", "L", "S", "M", "L"), 
                ordered = TRUE, 
                levels = c("S", "M", "L"))
#Sort the factor using sort().

sort_sizes<- sort(sizes,decreasing = FALSE)

print(sort_sizes)
#Observe the result.

