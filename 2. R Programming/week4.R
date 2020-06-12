# str functin
# used to see inside a R object
str(ls)
x = 100
str(x)
y= 1:10
# summary is used to see some basic attributes
summary(ls())
summary(y)


# number simulations

# normal distribution
r = rnorm(10)
# density function for given mean and standard deviation
d = dnorm(10,1,1)
# qumulative distribution
q = qnorm(.5,1,1)
# quantile function
p = pnorm(1,2,1)

# linear simulation
# y = b0 + b1*x + e
x<- rnorm(100)
e<- rnorm(100,0,2)
y<- 0.5 + 2*x + e
plot(x,y)

# Random Sampling
sample(1:10,4)
sample(letters,5)
# permutation
sample(1:20)
sample(1:10,replace = T)
sample(1:100,10,replace = T)

# Profilers
# Time functions
Sys.time()
# profiler function
Rprof()
# DO NOT USE RPROF AND SYS.TIME() TOGETHER
summaryRprof()

# **************************

