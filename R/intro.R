"Hello World"
'Hello Kajal'
2
# bro what r u doing
# multiple things in one line for print not allowed-  5 10 15

name1 = "Kajal"
name = "abc"
age = 25
Age = 2

age = age + 5
age

num = "2"
num

4*8
4 + (2*5)  # by default follows the bodmas
4 + 2*5

text = "Bye"

paste("I am going so",text) # concat

color1 = color2 = color3 = "red"


#legal variables
a = "a"
a_a = "a_a"
aA = "aA"
AA = "AA"
A2 = "A2"
this.year = 2025

# illegal - 2var, a-a, my var, _var, TRUE


# Data types
N = 10
class(N) #numeric - decimal and whole +ve or -ve

class("Red")#character

class(1000L)#Integer - whole +ve or -ve

class(TRUE) #logical

class(F) #logical

#operator - * > < == != + - /(decimal/float results) %/%(integer div) ^(power) %%(modulo)

2*pi #pi val

??Constants #to find the help 

LETTERS
letters
month.name
month.abb
pi



# built in math func
max(2,3)
min(3,2)
sqrt(4)
abs(-4)



# data structures
# 1.vectors, 2.DataFrames, 

#1.Vectors 
#1.vector of strings
fruits_no_c = ("Cherry Banana, Apple") #indexing starts at 1
class(fruits_no_c)
fruits = c("Cherry Banana, Apple")   # c - stands for combine, concat hence understands it as a vector
class(fruits)

roll = c(1,2,3,4)
roll

present = c(TRUE, F, T, FALSE)
present

#2.heterogeneous vector
het = c(1,'a', T, 5L, 5.2)  #char as data type coz priority is high. char > num > int > logical
het

x = y = c(1,2,3,4)
x+y


#Sequence- prints from no. to no.
1:10
2:5
seq(0,50,5)  #last is step
seq(0,50,by=5)

seq(50,0,-5)
seq(10,1)

range = 1.5:5 #stores all under that range with step of 1.5



rep(45,5)
rep("A",5) # repeats that many times




#random sample generation
sample(1:50,5) # 1-50 = population data , select any random 5 numbers from population
sample(1:10,20) # cant generate larger sample than the population, by default replace(repetation) is allowed
sample(1:10,20,TRUE) # no error generation


sample(c("a","b","c"), 7, replace = TRUE)
sample(c("a","b","c"), 7) # error - cannot take a sample larger than the population when 'replace = FALSE'



# Indexing starts at 1
x = c("a","b","c","d","e")
x[1]
x[1:3]
x[3:6] # absent will be given as NA
x[1,2] # error
x[c(1,2)] #solution to it
x[-1] # excludes that element
x[-2:-4]
x[c(-2,-4)] # excludes mentioned only

x[1] = "1"
x

x[-1] = "NA" # all excluding index 1 will be NA
x


# logical indexing
y = c(1,5,5,5)
y<5 # checks each elements and gives bool val
y[y<5] = "a"   # like if condition, if y<5 in y replace with a


# relational with vector
marks = c(60,80,70,90)
marks[marks >= 80]



alphabets = c("a","c","d")
"a" %in% alphabets # is a present in alpha
"b" %in% alphabets

"A" %in% alphabets # false coz capital


sort(marks) #ascending
sort(marks,decreasing = T)


mean(marks)
length(marks)


1:10  # treated as numbers
paste(1:10) # treat as char



paste(1:12, c("st", "nd", "rd", rep("th",9))) #concates each number and vector
paste(month.abb, "is the", 1:12, c("st", "nd", "rd", rep("th",9)), "month of the year")

# paste -concat, c -vector, rep- repeat




# vector functions
length(marks)
max(marks)
min(marks)
sum(marks)
mean(marks)
median(marks)
mode(marks) # shows data type coz no mode 


# install modeest package
data = c(1,1,1,1,3,3,3,3,5,5,5,5,6,6,9)
mfv(data)



# 2.DataFrames
# collection of vectors multiple - table

x = c(1,2,3,4)
y = c("a","b","c","d")
data.frame(x,y) # length of x and y should be same

df = data.frame(x,y) #saved
df
View(df) # directly open excel kinda thing in new tab

data = data.frame(roll = c(21,22,23),  # name of vector acts as a col name
                  grades = c("A","C","A"), 
                  pass = c(T,F,F))
data


# extract df element
# row, col
data[,1] # complete col 1
data[1,] # complete row 1

data[,] # complete table

data$grades # lists all grades using col name

data[data$grades == "A",] # gives all all columns but selected rows
data[data$pass == F, c(1,2)] # will only show rows of failed with col roll and and grades

data[data$pass == FALSE & data$grades == "C",]
data[data$pass == FALSE | data$grades == "C",]


# ready made datasets - Orange and mtcars
Orange
mtcars

dim(Orange) # shows size rows and columns number
dim(mtcars)

nrow(Orange)
ncol(mtcars)

str(mtcars) # shows column name and their data types

summary(Orange) # statistical info of numerical col

colnames(Orange)

Orange$circumference

table(Orange$circumference)
table(mtcars$cyl,mtcars$gear) #freq with value and cyl becomes representation of rows and gear as col and unique


unique(mtcars$cyl)  #unique val in cyl




# another dataset - USArrests
USArrests

View(USArrests)
head(USArrests) #top 6 vals in R but 5 in python
tail(USArrests) # lowest 6 

head(USArrests,2) # first 2




data()  # shows many available ds


