#1
seq(9,90,length.out=10)



#2
x = 1:5
lst = list(x, x*2, x*3)
lst[[2]][3:5]



#3
library(dplyr)
mtcars %>% filter(cyl==6)
#filter(mtcars, cyl==6)

#4
as.Date("12/31/2030", format="%m/%d/%Y")



#5
x = c(1,2,3,4)
rep(x, 1, each=3)



#6
cat("123 abcd 2020-01-01 456 efgh 2030-01-01", file="txt.txt", sep="\n")
scan("txt.txt", what=list(item1=integer(0), item2="", date=""))



#7
#install.packages("car")
library(car)
#str(Salaries)
aggregate(salary ~ sex + rank, Salaries, mean)



#8
#str(mtcars)
#table(mtcars$am)
mtcars$am[mtcars$am==0] = 2
#table



#9
x = c(1,2,3)
y = c(4,5,6)
z = c(7,8,9)
mtx = cbind(x,y,z)
#class(mtx)
rownames(mtx) = c("a","b","c")
#mtx 



#10
#seq(as.Date('2020-06-01'), as.Date('2020-06-05'), by="day")
#x=seq(as.Date('2020-06-01'), as.Date('2020-06-05'), by="day")
#format(x, "%y/%m/%d(%A)")
format(seq(as.Date('2020-06-01'), as.Date('2020-06-05'), by="day"), "%y/%m/%d(%A)")



#11
library(dplyr)
#str(iris)

iris %>%
  group_by(Species) %>%
  summarise(mean = mean(Sepal.Length))



#12
fun = function(from, to){
  a=paste0(from, "01")
  b=paste0(to, "01")
  format(seq(as.Date(a, format="%Y%m%d"), as.Date(b, format="%Y%m%d"), by="month"), "%Y%m")
}

fun(from="201611", to="201802")
