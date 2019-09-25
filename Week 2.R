#########
# Week 2#
#########

matrix(0,5,5)

4+8-10

#To run press cmd+enter

#Assingning operators:
x<-3
y=2
assign("z",1)

#To see the list of objects we have
ls()

#To see class or data type of an object:
class(x)

#To remove an object from environment:
rm(x,y,z)
ls()

x<-3
y=2
assign("z",1)

#We can also remove all the objects either with the broom icon or:
rm(list=ls(all=T))

#Data structures
#Vector
x<-c(1,2,4,5,44,6,10)
class(x)
length(x)

#Data frame
data.frame(x)

#Matrix
matrix(x)

#List
list(x)

#Array
array(x,dim=c(2,2,2))

#Accessin a data.frame object
cars #To make this appear in the environment we need to assing as an object

data<-cars
class(data)
print(data)

#We can leverage what we know about the dimensionality of the data to extract parts of it
#using data[row,column]

data[1,] #info of only row 1
data[2,] #info of only row 2
data[,1] #info of only column 1. If you typ 3 in column, error will appear
data[1,1] #info of vector in row 1, column 1
data[1:3,] #info of row from 1 to 3 for all columns
data[1:3,2] #info of row from 1 to 3 for column 2
data[,1:2] #this will be the same as data[,]

#Dimensions
dim(data) #Shows first rows and then columns

#summary
summary(data)

#Logical operators:
# x == y equals to
# x != y does not equal
# x >= y greater than or equal to
# x <= y less than or equal to
# x > y greater than
# x < y less than

#Statements can be combined using and (&) or (|)
# x==1 & y==5 "and" conditional statements
# x==1 | y==5 "or" conditional statements

#We can make subsets by using []
speed[speed==4]
data[data==4]
data[data!=0]

#Change Boolean statements into numeric class

x<-1:10
x>=5
as.numeric(x>=5) #This allow us to generate dichotomous

#Subsetting with logical operators:
d<-data.frame(x=c(100,200,300,400),
              y=c("a","b","b","a"))
d
d[d$x>2,]
d[d$x>200,]

#Exercise 1
#Let’s create a object called my_vector that is a vector containing all intergers from 1 to 100. Make sure to print your object

my_vector<-1:100
print(my_vector)

#Exercise 3
#I have created a vector called foods that contains character values of different types of foods,
#Please subset the vector so that it only contains bananas, grapes, and strawberries, and assign it to the object fruits.

foods <- c('bananas','bread','beef','grapes',
           'cheese','strawberries','milk')
fruits<-foods[c(1,4,6)]
print(fruits)

#Recall that we can coerce object into different classes using the as.___ functions

volcano
class(volcano)
as.data.frame(volcano)

#Data Frames exercises:
#The data set mtcars is loaded into your environment. How many rows and columns does the data frame have?
mtcars
dim(mtcars)
ncol(mtcars)
nrow(mtcars)

#Exercise 2
#Print off the first top 6 entries of (head()) or bottom 6 entries (tail()) of mtcars.
head(mtcars,6)
tail(mtcars,6)

#Exercise 3
#Subset mtcars to only contain the last two columns and for rows 6 through 20.
mtcars[6:20,10:11]

#Exercise 4
#Subset the mtcars data to only contain retain cars with greater than 24 miles per gallon (mpg).
mtcars[mtcars$mpg>24,]

#To look for help about a function
?c()

#To install a package 
install.packages("tidyverse")

#To load a package you can use either library() or requiere()
#The package need to be load to be used

sessionInfo()

install.packages("readr") #an expansive array of functions to read different data types
install.packages("readxl") #excel spreadsheets
install.packages("haven") #SPSS, SAS and .dta
install.packages("xlsx") #excel

require(readr)
require(readxl)
require(haven)
require(xlsx)
library("xlsx")

#**************************************#
#Practice importing and exporting data#
#*************************************#
getwd()
setwd("/Users/da.delpilar.miranda/Documents/R/Week-2")

#EXPORT -Since we set a directory before, there will be the data
sleep

write_dta(sleep,path="sleep.dta") #To export in stata
write_csv(sleep,path="sleep.csv") #To export in csv
write_excel_csv(sleep,path="sleep.xlsx") #To export in excel

#Save in R
save(data,file = "sleep.Rdata")

#IMPORT
#Always remember to load the package for each type of data

data<-read_dta(file="sleep.dta") #From stata
data<-read_csv(file="sleep.csv")




