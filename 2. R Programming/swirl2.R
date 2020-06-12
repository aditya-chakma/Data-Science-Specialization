# 1. **********************************
# Logic
library(swirl)
swirl()
T == T
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 ==7
6 <7
10<=10
5!=7
!(5007)
!(5==7)
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)
5 > 8 || 6 != 8 && 4 > 3.9
isTRUE(6>4)
identical('twins', 'twins')
xor(5 == 6, !FALSE)
ints <- sample(10)
ints
ints >5
which(ints>7)
any(ints<0)
all(ints>0)
Sys.Date()
mean(c(2,4,5))
submit()
boring_function('My first function!')
boring_function
submit()
my_mean(c(4,5,10))
submit()
submit()
submit()
remainder(5)
remainder(11,5)
remainder(divisor = 11,num = 5)
remainder(4,div=2)
args(remainder)
submit()
submit
invisible
info()
bye()
q()
evaluate(sd, c(1.4,3.6,7.9,8.8))
evaluate(function(x){x+1},7)
evaluate(function(x){x+1},6)
evaluate(function(x){x[1]},c(8,4,0))
evaluate(function(x){x[length(x)]},c(8,4,0))
?paste
paste('Programming','is','fun')
paste('Programming','is','fun!')
submit()
submit()
telegram('FuCK You')
submit()
submit()
mad_libs(c(place= 'Khagrachari', adjective = 'the', noun ='rule'))
submit()
'I' %p% 'love' %p% 'R!'
d1 <- Sys.Date()
class(d1)
unclass(d1)
d1
d2 <- as.Date('1969-01-01')
unclass
unclass(d2)
t1 <- Sys.time()
t1
class(t1)
unclass(t1)
as.POSIXlt(Sys.time())
t2<-as.POSIXlt(Sys.time())
class(t2)
t2
unclass(t2)
str(unclass(t2))
play()
str(1)
class(str(1))
nxt()
t2['min']
t2$min
weekdays(d1)
months(t1)
quarters(t2)
strptime('Oct 17,1986 8:24')
strptime
play()
?strptime
strptime('Oct 17,1986 8:24',format = '%b %d,%Y %T')
strptime('Oct 17,1986 8:24',format = '%B %d,%Y %T')
strptime('October 17,1986 8:24',format = '%B %d,%Y %T')
strptime('October 17,1986 8:24',format = '%b %d,%Y %T')
nxt()
strptime('October 17,1986 8:24',format = '%b %d,%Y %T')
t3<- strptime('October 17,1986 8:24',format = '%b %d,%Y %T')
t3<-'October 17,1986 8:24'
t3 <- "October 17, 1986 08:24"
strptime(t3,"%B %d, %Y %H:%M")
t4<-strptime(t3,"%B %d, %Y %H:%M")
t4
class(t4)
Sys.time() > t1
Sys.time() - t1
difftime(Sys.time(), t1, units = 'days')

# ************************************

