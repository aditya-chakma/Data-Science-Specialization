# Handling Data in R
# Author: Aditya Chakma
# Course: Coursera Data Science Specialization

#********************
# Reading Data
# read.table(), read.csv() for reading tabular data
# readLines() for reading text file
# source() for reading R code files( inverse of dump)
# dget() for reading R code files ( inverse of dput)
# load() for reading in saved workspaces
# unserialize() for reading single R object in binary form

#**********************
# Writing Data
# write.table()
# writeLines()
# dump()
# dput()
# save()
# serialize()

#******************************
# Reading BIG datasets
# R reads all the data, and puts it in the memory
# If the dataset is larger than the memory in the computer then
# R is going to choke
# But there are some thechniques to speed up R
# 1. If data types are not specified, the R is going to read all the
# columns to figure out the data type. So telling R what the data
# type is in the first place, speeds up the computation
# 2. If all the data can't be read, then first 100 or 1000 rows
# can be read by specifying the argument nrows in read.table() function

#**********************************
# Reading FILE
# filem opens a connection to a file
# gzfile, opens a connection to a file compressed with gzip
# bzfile, opens a connection to a file compressed with bzip2
# url, opens a connection to a webpage

#*****************************
# Subsetting 
# use [] to subset an object. Always returns same class as the object
# [[]] is used to subset an object. And the returned class will be the
# class of the element. Not necessarily the class of the object
# $ is used to extract data from a list or data frame by name

v = c('a','b','c','d','e','f')
v[1] # First element
v[2] # Second element
v[1:3]
v[v>"a"]
v>"a"
v[[1]]
v[[1:3]] # Can't do it. Can extract only one character

# Subsetting list

x = list(foo= 1:4, bar = c(0.6,3.1416))
x
x$foo
x$bar
x[1]
x[[1]]

typeof(x[1])
typeof(x[[2]])
x[2]   # Get a list
x[[2]] # Get a sequence
x[[1]][[2]] # Get an element
x[[c(1,2)]] # Get an element
x[c(1,2)] # Be caureful to use this

typeof(x[2])
typeof(x[[2]])
y=x[[1]]
y[2]


x[['foo']]
x['foo']
# Remember [[]] will return the native class of the element.
# [] will return the same class as the object

#***********************************
# Partial matching
x = list(aardvark = 1:5, degngue = 6:10, dog = 11:15)
x$a # Partialy matching with aardvark
x$d # Have two mathichgs, so return null
x$de # Got only one match so return that
x$do
x[['a']] # Return null
x[['a', exact=F]] # return partial match

#*********************************
# Removing NA values
na = c(1,2,NA,3,4,NaN)
bad = is.na(na)
bad
na[!bad]

#**********************************
#*Vectorized operations
x = 1:4
y = 6:9
x + y
x >2
x == y
x *y
x/y

# True multiplication
x %*%y


#| When you are at the R prompt (>):
#  | -- Typing skip() allows you to skip the current question.
#| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
#| -- UNTIL you type nxt() which will regain swirl's attention.
#| -- Typing bye() causes swirl to exit. Your progress will be saved.
#| -- Typing main() returns you to swirl's main menu.
#| -- Typing info() displays these options again.
