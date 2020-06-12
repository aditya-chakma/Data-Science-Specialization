# **********************************
# If else statement

x = 5
if( x >2)
{
  print('x is greater than 2')
}else if( x==2)
{
  print('x is equal to 2')
}else{
  print('x is less than 2')
}

# If else statements can also be assigned to a varible
y = if( x >10){
  10
}else{
  5
}
y

# *********************************************

# For Loop

x <- c('a','b','c','d')
for( i in 1:4)
{
  print(x[i])
}

for (i in seq_along(x))
{
  print(x[i])
}

for( i in x)
{
  print(i)
}

# ***************************************************
# While loops
countvar = 0
while (countvar < 10) {
  print(countvar)
  countvar = countvar + 1
}


# Example while loop with random walk

coin = 5
while(coin >=2 & coin <=10)
{
  print(coin)
  z = rbinom(1,1,0.5)
  
  if(z ==1)
  {
    coin = coin + 1
  }else{
    coin = coin - 1
  }
}


# ********************************
# Control statements
# Repeat and Break
x = 1
limit = 10

repeat{
  if(x==limit) break;
  x = x+ 1
}

# next
# Just like continue in other languages

for(i in 1:30)
{
  if( i <= 20) next;
  print(i)
}

# ********************************
# Functions

add2 <- function(x,y)
{
  return(x+y)
}

domath<- function(x,y)
{
  return (c(x+y,x-y))
}

above10 <- function(x)
{
  temp = x[x>10]
  return (temp)
}

calculateColMeans <- function(y, removeNA = T)
{
  num = ncol(y)
  means = numeric(num)
  
  for( i in 1:num)
  {
    means[i] = mean(y[,i], na.rm = removeNA)
  }
  means
}

# Lazy evaluation of function

f<-function(a,b){
  a^2
}

# This won't give any error
# Because arguments in R are evaluated when they are called
# Here b is not set with a default value but also, 
# it's not used. So, as a result it gives no error.
# For example:
fprint <- function(a,b)
{
  print(a)
  print(b)
}

fprint(4)
# This function will first print a
# And then, will give error because
# value of b is not found

# There is an special argument type which is ...
# The ... is used to extend another function
my_post<- function(x,y,ttype = 'l', ...)
{
  plot(x,y,type = ttype, ...)
}

# Laxical scoping is very important in R
# Have a look

make.power<- function(n)
{
  pow<- function(x)
  {
    x^n
  }
  # Return pow
  pow
}

cube<-make.power(3)
square<-make.power(2)
cube(3)
square(3)

# SO what i'm actually calling here is pow function, defined inside power. Which
# was already assigned to cube and square

# Seeing a function environment
ls(environment(cube))
get('n',environment(cube))

ls(environment(square))
get('n',environment(square))

# Lexical and Global Scoping
# Lexical

g<- function(x)
{
  x*y
}

y = 10
f<- function(x)
{
  y = 2
  y^2 + g(x)
}



f(3)

# Here g is not defined inside f. So, g will be using value of global environment, not the one inside f










