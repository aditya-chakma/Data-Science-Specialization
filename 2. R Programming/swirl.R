install.packages('swirl')
package_version('swirl')
package_version(swirl)
packageVersion('swirl')
setwd("D:/Documents/Courses/Data Science Specialization/2. R Programming")
cat('\014')
library(swirl)
swirl()
0
ls()
llibrary(swirl)
library(swirl)
install_from_swirl('R Programming')
swirl()
5+7
x <- 5+7
x
y = x-3
y <- x-3
y
c(1.1, 9, 3.14)
z = c(1.1, 9, 3.14)
z <- c(1.1, 9, 3.14)
?c
z
c(z,555,z)
z*2 + 100
my_sqrt <- sqrt(z-1)
my_sqrt
my_div = z/my_sqrt
my_div <- z/my_sqrt
my_div
c(1,2,3,4) + c(0,10)
c(1,2,3,4) + c(0,10,100)
z*2 + 1000
my_div
getwd()
ls()
x  = 9
x <- 9
ls()
dir()
?list.files
args(list.files)
old.dir = getwd()
old.dir <- getwd()
play()
?dir.create
?list.files
args(dir.create)
nxt()
dir.create('testdir')
setwd(dir = 'testdir/')
file.create('mytest.R')
list.files()
file.exists('mytest.R')
file.info('mytest.R')
file.rename('mytest.R','mytest2.R')
file.copy('mytest2.R','mytest3.R')
play()
?file.path
nxt()
file.path('mytest3.R')
file.path('folder1','folder2')
?dir.create
dir.create('testdir2/testdir2',recursive = T)
play()
getwd
getwd()
rm('testdir2/')
rm('testdir2/testdir2')
nxt()
dir.create('testdir2/testdir3',recursive = T)
dir.create('testdir2','testdir3',recursive = T)
play()
file.path()
info()
?dir.create
nxt()
dir.creta
dir.create(file.path('testdir2','testdir3'),recursive = T)
dir.create(file.path('testdir2','testdir3'),recursive = TRUE)
setwd(old.dir)
1:20
pi:10
15:1
?`:`
seq(1,20)
seq(1,20,by = =0.5)
seq(1,20,by=0.5)
seq(0,10,by=0.5)
my_seq <- seq(5,10, length.out = 30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0,times = 40)
rep(c(0,1,2),10)
rep(c(0,1,2),times = 10)
rep(c(0,1,2),each = 10)
num_vect <- c(0.5, 55, -10, 6)
tf = num_vect<1
tf <- num_vect<1
tf
num_vect >= 6
my_char = c('My','name','is')
my_char <- c('My','name','is')
print(my_char)
my_char
paste(my_char, collapse = ' ')
c(my_char, 'Aditya')
my_name <- c(my_char, 'Aditya')
my_name
paste(my_name, collapse = ' ')
paste('Hello','World!',sep = ' ')
paste('Hello','world!',sep = ' ')
paste(1:3, c('X','Y','Z'). sep = ' ')
paste(1:3, c('X','Y','Z'), sep = '')
paste(LETTERS, 1:4, sep='-')
x <- c(44,NA,5,NA)
x*3
y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y,z),100)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_data
1/0
1\0
\0
0/0
Inf-Inf
x
x[1:10]
x[is.na(x)]
y <-[is.na(x)]
y <- x[is.na(x)]
y <- x[!is.na(x)]
y
y{y > 0}
y[y > 0]
x[ x>0]
x[!is.na(x) & x>0]
x[c(3,5,7)]
x[0]
x[3000]
x[c(-2,-10)]
x[ -c(2,10)]
vect <- c(foo =11, bar =2, norf = NA)
vect
names(vect)
vect2 = c(11,2,NA)
vect2 <- c(11,2,NA)
names(vect2)<-c('foo','bar','norf')
identical(vect,vect2)
vect['bar']
vect[c('foo','bar')]
my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <-c(4,5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
play()
typeof(my_vector)
nxt()
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(c(1:20),nrow = 4,ncol = 5)
identical(my_matrix, my_matrix2)
patients <- c('Bill','Gina','Kelly','Sean')
cbind(my_matrix,patients)
cbind(patients,mmy_my_matrix)
cbind(patients,my_matrix)
my_data <- data.frame(patients,my_matrix)
my_data
class(my_data)
cnames -< c('patient', 'age','weight','bp','rating','test')
cnames <- c('patient', 'age','weight','bp','rating','test')
colnames(my_matrix) <- cnames
colnames(my_data) <- cnames
my_data
