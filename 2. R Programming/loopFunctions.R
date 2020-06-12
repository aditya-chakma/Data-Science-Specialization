# Loop functions are used to loop over a list, and pass to a function every single element
# Here x is a list of two sequences
# mean is applied to the two elements of x

x <- list(1:4, rnorm(10))
lapply(x, mean)

x <- 1:4
lapply(x,runif)

# lapply(data, FUN, ...)
# These other arguments ...  are passed to the function
x<-1:4
lapply(x,runif,min = 0, max = 10)

# lapply is used heavily with anynomous functions
x = list(a = matrix(1:4,2,2), b = matrix(1:9,3,3))
lapply(x, function(p) p[,1])

# sapply is just like lapply, but it tries to simplify the result
# for example here lapply returns 4 separate elements
# but sapply return a vector
x = list(1:4, rnorm(10), rnorm(100,100,1), rnorm(100,50,1))
lapply(x,mean)
sapply(x,mean)


# ***********************************************
# apply
x<- matrix(rnorm(200),20,10)
apply(x,2,mean) # apply along 2nd axis
apply(x,1,mean) # apply along 1st axis

# mapply
# use multiple argument on multiple list
# without mapply
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
# Same thing with mapply
mapply(rep,1:4,4:1)
noise<-function(n,mean,sd)
{
  rnorm(n,mean,sd)
}
mapply(noise,1:5,1:5,2)

# tapply
# tapply is used to apply function to a subset of functions
x<- c(rnorm(10),runif(10),rnorm(10,1))
f<- gl(3,10)
f
tapply(x,f,mean)
tapply(x,f,mean,simplify = F)

# split
# splits a factor according to group
# later we can apply any of the lapply, sapply, apply to the groups
x<- c(rnorm(10), runif(10),rnorm(10,1))
f<- gl(3,10)
# Here f have 3 labels named 1,2,3
split(x,f)
lapply(split(x,f),mean)
tapply(x,f,mean,simplify = F)
# but split can do even more complicated data frames
library(datasets)
head(airquality)
# calculate ozone or wind mean according to the month
s <- split(airquality, airquality$Month)
s
lapply(s, function(x) colMeans(x[, c('Ozone','Solar.R','Wind')], na.rm = T))







