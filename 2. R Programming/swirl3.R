str(ls)
str(plants)
?sample
sample(1:6,4,replace = TRUE)
sample(1:6,4,replace = TRUE)
sample(1:20,10)
letters
LETTERS
sample(LETTERS)
sample(c(0,1),100,replace = T,prob = c(0.3,0.7))
sample(c(0,1),100,replace = TRUE,prob = c(0.3,0.7))
sample(0:1,100,replace = TRUE,prob = c(0.3,0.7))
flips<-sample(0:1,100,replace = TRUE,prob = c(0.3,0.7))
flips<-sample(c(0,1),100,replace = TRUE,prob = c(0.3,0.7))
flips
sum(flips)
?rbinorm
?rbinom
rbinom(1,size=100,prob=0.7)
flips<-rbinom(1,size=100,prob=0.7)
flips2<-rbinom(1,size=100,prob=0.7)
flips<-sample(c(0,1),100,replace = TRUE,prob = c(0.3,0.7))
flips2<-rbinom(n=100,size=1,prob=0.7)
flips2
sum(flips2)
?rnorm
rnorm(10)
rnorm(10,100,25)
rpois(5,10)
replicate(100,rpois(5,10))
my_pois<-replicate(100,rpois(5,10))
my_pois
colMeans(my_pois)
cm<-colMeans(my_pois)
hist(cm)
data(cars)
?cars
head(cars)
plot(cars)
?plot
plot(cars$speed,cars$dist)
plot(cars$dist,cars$speed)
plot(x = cars$speed,cars$dist)
plot(x = cars$speed,y=cars$dist, xlab = "Speed")
plot(x = cars$speed,y=cars$dist, xlab = "Speed", ylab = 'Stopping Distance')
plot(x = cars$speed,y=cars$dist, ylab = 'Stopping Distance')
plot(x = cars$speed,y=cars$dist, xlab = "Speed", ylab = 'Stopping Distance')
plot(cars,title(='My Plot'))
plot(cars,title='My Plot')
plot(cars,main='My Plot')
plot(cars,title = 'My Plot Subtitle')
plot(cars,sub = 'My Plot Subtitle')
?plot
args(plot)
plot(cars,col = w)
plot(cars,col = 2)
plot(cars, xlim = c(10,15))
plot(cars, pch = 2)
data("mtcars")
data(mtcars)
?boxplot
boxplot(formula=mpg~cyl,data = mtcars)
hist(mtcars$mpg)
