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
