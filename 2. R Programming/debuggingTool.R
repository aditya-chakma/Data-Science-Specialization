# message: Just prints an output on the console. Something might be wrong, but no problem executing
# warning: The function got something unexpected. But it can still go executing without any problem
# error: The function can't execute. Something is seriously wrong executing

# Example Warning:
log(-1)
f=function(x)
{
  if(x>0)
    print('X is greater than 0')
  else
    print('X is less than or equal to 0')
  invisible(x)
}
x = f(1)
# Example error:
f(NA)
# fixing the error
f=function(x)
{
  if(is.na(x))
    print('X is missing a value')
  else if(x>0)
    print('X is greater than 0')
  else
    print('X is less than or equal to 0')
  invisible(x)
}
f(NA)

# Debugging functions
# traceback : trace to the function where the error occurs. call functions one after another
# debug : if debug flag is on, on a function, it'll stop executing and halt right on the first line 
# of the function. And you can execute it one by one
# browser : When executing, if browser if given. execution will halt on the given line
# trace: allows insert debugging code, into a function without editing
# recover : error handler. Stops the execution immediately without giving the console back

# using the tools:

# z doesn't exist
# traceback:
mean(z)
traceback()
f<-function(x)
{
  print(x)
  x = g(x)
  return (x)
}
g<-function(x)
{
  print(x)
  return(x+z)
}
f(3)
traceback()

# removing all the variables
rm(list = ls())
# clearing the screen
cat('\014')
lm(y-x)
# nor y nor x exist
traceback()

# debug
debug(lm)
# press n and then enter to run next line.
# until you hit the line where the error occured
lm(y-x)

# Recover
options(error = recover)
read.csv('gg.csv')












