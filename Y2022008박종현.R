
이름 : 박종현
학부: 비즈니스IT전공
학번 : Y2022008

#1.
score <- c(100, 95, 45, 77, 60, 30, 85, 49)
score[score<50] <- 50

#2.?
cha <- letters[1:10]


#3.?
x <- c("A", "B", "C")
paste("type",rep(x, times=c(1,2,3)))

#4.
month.abb()
mtx <- month.abb
mtx <- matrix(mtx, 3,4 )
mtx[2,]

#5.
x <- 1:12
mtx <- matrix(x,3,4)

mtx[2,] <- 200

#6.
month.abb <- list(month.abb)
month.name <- list(month.name)
month.abb[[9]] <- "September"


#7.
library(tibble)
x <- 1:3
y <- 4:6
z <- 7:9
tbl <- tibble(x, y, z)

#8.



#9.
fruits <- c("Apple", "Banana", "Orange")
amount <- c(10,20,30)

rep(c(fruits, amount), )

#10.
gsub(string = string, pattern = "data", replacement = "text")