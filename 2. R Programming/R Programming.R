# Variables
x = 1
message = "Hello World"

# c is used to concatenate variables
v = c(1,2,3) # Regular number
print(v)

v = c('a','b','c') # Regular character
print(v)

v = c(TRUE, FALSE) # 
print(v)
v = c(T, F) # T  for True and F for False
print()

# Can use complex numbers in R too
v = c(1+0i, 2 + 3i, 9 +2i)
print(v)

# Vectors and lists are indexed at 0

# Vector contains only one type of data
# So any other type will be converted
v = c(1,2,TRUE,1+0i, "a",1.00963)


print(as.numeric(v))
print(as.logical(v))
print(as.character(v))

#List can contain any type of data

v = list("a",T,1+9i,1.337,1L)
typeof(v)
print(v)
print(v[1])
print(typeof(v[1]))

# List elements can be accessed with double brackets [[]]
# Single bracket will return a list
print(v[[1]])
print(typeof(v[[1]]))

# Matrices or 2D Arrays
m = matrix(nrow = 2,ncol = 2)
m
dim(m)
attributes(m)


# Matrices can also be created by initializing data
m = matrix(1:10,2,5)
m
# By default it's column wise matrix
# Can make row wise matrix by setting brows = T
m = matrix(1:10,nrow = 2,ncol = 5,byrow = T)
m

# If less data is supplied, elements are repeated
m = matrix(1:10, nrow=5,ncol=5)
m

# IF extra elements are supplied then, only first nrow*ncol elements are taken
m = matrix(1:100, nrow=2, ncol=5)
m

# Can also give dimension attribute to the matrix
m = 1:10
dim(m) = c(2,5)
m

# dimensions must satisfy, this will give an error
m = 1:10
dim(m) = c(5,5)

m = 1:27
dim(m) = c(3,3,3)
m

# Binding
# Can bind two vectors

# column wise binding
a = 1:3
b = 10:12
x = cbind(a,b)
x

# row wise binding
x = rbind(a,b)
x

# Different length binding will cause elements to repeat, but different length will cause them to 
c = 100:120
rbind(a,b,c)


# Matrices can also be binded
m1 = matrix(1:10,2,5)
m2 = matrix(11:20,2,5)

v1 = cbind(m1,m2)
v1
v2 = rbind(m1,m2)
v2

# For cbinding, number of rows must match
# For rbinding. number of columns must match
m1 = matrix(1:10,2,5)
m2 = matrix(11:20,5,2)
cbind(m1,m2)
rbind(m1,m2)

# Factors
# Factor is a data structure where each data have a label
f = factor(c('male','female','male','male','male','female','female','male','female','female'))
f

# Table shows how many data of each label
table(f)
typeof(table(f))

# Unclass shows underlying representation of each class of data in factor
unclass(f)

# We can define labels, by default the are numbered in alphabetical order
# 
f = factor(c('male','female','male','male','male','female','female','male','female','female'), levels = c("female","male",'gg'))
f
f = factor(c('male','female','male','male','male','female','female','male','female','female'), levels = c("male","female"))
f


# Missing values in R
# NAN is also NA
# But reverse is not true
# NA might have different classes like, integer NA, character NA etc

x = c(1,2,NA,3,4)
is.na(x)
is.nan(x)

x = c(1,2,NaN,NA,3,4)
is.na(x)
is.nan(x)


# Data Frames in R
# Each of the row in a dataframe have a attribute called name
# row name can be integers, or a nmae etc
# row.name
# read.table()
# read.csv
# data.matrix()

# Data frame can be created in another way
# name of the first column is foo, and the second column is bar
df = data.frame(foo = 1:4, bar = c(T,F,F,F))
df
df[1]
df[2]
nrow(df)
ncol(df)



# Names
# By default Data Types do not have names
# We can create give names to variables
y = 1:3
names(y)

names(y) = c('adi','badi','ladi')
names(y)
# Names attribute and variables should have the same length or lower. Or it might give error
names(y) = c('adi','badi','ladi', 'gadi')
names(y)
names(y) = c('adi','badi')
names(y)
y
# list can also have names
l = list(a =1, b=2, c=3)
l
names(l)

# Matrices can also have names
# These names are called dimnames

m = matrix(c(1:4),2,2)
dimnames(m)
# dimnames(m) = list( c(first dim names), c(second dim names))
dimnames(m) = list(c('a','b'),c('c','d'))
dimnames(m)
m


















