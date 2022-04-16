#package
Sys.setlocale()

installed.packages()


colnames(installed.packages())
installed.packages()[, c("Package", "Version")]

search()

m <- matrix(1:6, 3, 2)
m
t(m)
t <-function(x) x + 100

t(m)

base::t(m)

xyplot(dist ~ speed, data=cars)

library(lattice)
search()

xyplot(dist ~ speed, data=cars)

library(lattice)

detach(package:lattice)
serach()
search()



#help


install.packages("ggplot2")


search()
.libPaths()


help(package="ggplot2")
library(help=ggplot2)

library(ggplot2)
ls("package:ggplot2")
ls()
search()

data()
head(AirPassengers)
head(cars)
tail(cars)
head(cars, 10)
cars
help(cars)


data(package="MASS")

data(Animals, package="MASS")
head(Animals)

head(UScrime)

library(MASS)

head(UScrime)
head(uscrime)

Rabbit

help(median)
?median
args(median)

example(median)

help.search("xyplot")
??xyplot

hero.vector <- c("superman", "batman", "spiderman")
apropos("vector")

?regex

apropos("q$")

apropos("[7-9]")
apropos("xy+")

RSiteSearch("topicmodel")


install.packages("sos")
library(sos)
findFn("social network analysis")

#data set


c(1,2,3,4,5)
#numb.vector
c("a", "b", "c", "a", "b")
#lil.vector
factor(c("a", "b", "c", "a", "b"))
#lil. factor(ordered factor)
matrix(1:12, 3, 4)
#numb. matrix
array(1:12, c(2,3,2))
#numb. array
data.frame(product=c("a", "b", "c"),
           price=c(100,200,300))
# complex. data frame
list(x=c("a", "b", "c", "a", "b"),
     y=matrix(1:12, 3, 4),
     z=data.frame(product=c("a", "b", "c"),
                  price=c(100,200,300)))




# create vector

c(1,2,3,4,5,6,7,8,9,10)
c("we", "love", "data","analytics")
c(TRUE, FALSE, TRUE, FALSE)

odd <- c(1,3,5)
even <- c(2,4,6)
odd
even
c(odd,even)

3:9
9:3
5:-3

# seq f
?seq()
seq(from=3, to=9)
seq(from=3, to=9, by=2)
seq(from=3.5, to=1.5, by=-0.5)

seq(from=0, to=100, length.out=5)
seq(from=-2, to=1, length.out=5)

# rep
rep(1, times=3)
rep(c(1,2,3), times=3)
rep(c(1,2,3), each=3)
rep(c(1,2,3), times=c(1,2,3))
rep(c(1,2,3), length.out=8)

# 벡터는 항상 같은 문자면 문자, 숫자면 숫자로 쓰여야함

num <- c(1,2,3)
cha <- c("x", "y", "z")
c(num, cha)

# 벡터 내부구조 파악
str(num)
str(cha)

# length 길이
length(num)

# 내장형 상수 벡터
LETTERS
pi
letters
month.name

# ex
month <- c(12,9,3,5,1)
month
month.name[month]








# 벡터 연산
1+2
"+"(1,2)
# 원소대 원소의 벡터계산
c(1,2,3)+c(4,5,6)
c(1,2,3)*c(4,5,6)

c(10,20,30) / c(2, 4, 6)
# 나눈뒤 나머지 구하기
c(10,20,30)%% c(3, 5, 7)
# 나눈뒤 몫 구하기
c(10,20,30) %/% c(3, 5, 7)

# 두 벡터의 길이가 다르면 짧은 벡터를 재사용함
c(1, 2, 3) + c(4, 5, 6, 7, 8, 9)
c(1, 3, 5) + 10
# 길이가 안맞을 경우 경고메세지
c(1, 2, 3) + c(4, 5, 6, 7, 8)

# 논리 연산자 부호쓰기
v <- pi
w <- 10/3

v==w
# v = w 아님
v != w
v > w
v < w
!(v > w)
(v == w) | (v < w)
(v == w) & (v < w)
isTRUE(v==w)

# 원소들 간의 벡터 논리연산 계산
y <-  c(0,25,50,75,100)
z <- c(50,50,50,50,50)
y==z
# y와 z는 다른가?
y !=z
y > z
y < z

y==50



# 인수를 숫자로 판단하는 함수
as.numeric(TRUE)
as.numeric(FALSE)

TRUE*TRUE
TRUE+TRUE
FALSE*TRUE
# true false 값 응용
sum(y > 50)
# 하나라도 true일 경우 true
any(-3:3 > 0)
# 모두가 true일 경우 true
all(-3:3 > 0)

# 루트
sqrt(2)
# 루트 2^2는 2와 같지 않다
sqrt(2)^2 == 2
# 루트 이산차이 무시
all.equal(sqrt(2)^2, 2)
# 값이 왜다른지 설명함
all.equal(sqrt(2)^2, 3)
# 그거 무시하고 true false 반환
isTRUE(all.equal(sqrt(2)^2, 3))

# 문자열 붙여주기
fruit <- c("apple", "banana", "strawberry")
food <- c("pie", "juice", "cake")

paste(fruit, food)

# 재사용 규칙도 동일하다
paste(fruit, "juice")

# 전체변수 삭제
rm(list=ls())
















# 벡터 연산
# 절대값구하기
abs(-3:3)
# log
log(1:5)
# log에 베이스값
log(1:5, base = exp(1))

log2(1:5)
log10(1:5)

# 수학기호들
exp(1:5)
y <- exp(1:5)
log(y)

factorial(1:5)
choose(5, 2)

sqrt(1:5)

options("digits")
pi
pi*10
# 유효자리 수 설정
signif(456.789, digits = 3)

round(456.789, digits = 2)
round(sqrt(1:5), digits = 2)
round(456.789, digits = -2)
round(456.789, digits = -1)

# R은 가까운 짝수로 반올림함
round(11.5)
round(12.5)
round(13.5)

# 내림
floor(456.789)
floor(-456.789)
# 올림
ceiling(456.789)
ceiling(-456.789)
# 0에 가깝게
trunc(456.789)
trunc(-456.789)

# 무한대 Inf는 1.8*10^308 이상
3/0
is.infinite(10^(305:310))

# NAN Not a number
Inf/Inf
log(-2)
NaN +3
is.nan(NaN + 3)
 
# 결측값은 Na Not available
k <- NA
k+5
sqrt(k)

# 벡터값 활용
z <- 1:5
z
sum(z)
prod(z)
max(z)
min(z)

mean(z)
median(z)
range(z)
# 분산
var(z)
# 표준편차
sd(z)


# NA 빼고 계산하기
w <- c(1,2,3,4,5,NA)
sum(w)
sum(w, na.rm=TRUE)
sum(na.omit(w))

# NA 포함하고 계산하기
v <- c(NA,NA,NA,NA,NA)
sum(v, na.rm = TRUE)
prod(v, na.rm = TRUE)
max(v, na.rm = TRUE)
min(v, na.rm = TRUE)

# 누적계산

traffic.death <- c(842, 729,786,751,844,851,702)
# 누적합
cumsum(traffic.death)
# 누적곱
cumprod(traffic.death)
cummax()
cummin()

# diff 원소간의 차이 구하기(2칸씩)
diff(traffic.death)
diff(c(3,5,1,NA,2))

# 집합함수
# 합집합
union()
# 교집합
intersect()
# 차집합
setdiff()

p <- 1:10
q <- 6:15
union(p,q)

intersect(p,q)
setdiff(p,q)
setdiff(q,p)
# 동일여부 t/f
setequal(p,q)
# 차집합이 p의 원소에 포함되었을까 t/f?
is.element(setdiff(p,q),p)



rm(list = ls())

#벡터 인덱싱 원소의 위치
# 인덱스의 시작은 1이다
num <- 0:30

prime <- c(2,3,5,7,11,13,17,19)
prime[1]

prime[1:3]
prime[4:6]

# 인덱싱 추출도 벡터값으로 가능
prime[c(1,1,5,5)]
prime[c(1,3,5,7)]

indices <- c(1,3,5,7)
prime[indices]

# 음수 인덱스는 제거한다는 뜻
prime[-1]
prime[-1:-3]
prime[-(1:3)]

length(prime)
prime[1:(length(prime)-1)]
prime[-length(prime)]

# 벡터 원소 위치 지정으로 바꾸기
prime <- c(2,4,5,7,11,14,17,18)
prime[2] <- 3
prime[c(6,8)] <- c(13,19)
prime

prime <- c(2,3,5,7,11,13,17,19)
length(prime)
prime[9] <- 23
prime
prime[c(10,11)] <- c(29,31)
# 건너뛴 인덱스는 NA
prime[15] <- 47

# 인덱스 논리연산
prime <- c(2,3,5,7,11,13,17,19)
prime < 10
prime[prime<10]
# 2의 배수만 True 2로 나눠서 나머지가 0인것
prime %% 2 == 0
# 위에 해당하는 원소 추출
prime[prime %% 2 == 0]

# 정수 추출, 해당되는 원소 추출
seq_along(prime)
seq_along(prime) %% 2 == 0
prime[seq_along(prime) %% 2 == 0]
prime[seq_along(prime) %% 3 == 0]

prime[c(FALSE,TRUE)]
prime[c(FALSE,FALSE,TRUE)]

# true에 해당되는 인덱스 및 원소 반환
which()
which.max()
which.min()

rainfall <- c(21.6, 23.6, 45.8, 77.0, 102.2, 133.3, 327.9, 348.0, 137.6, 49.3, 53.0, 24.9)
rainfall > 100
which(rainfall > 100)
month.name[which(rainfall > 100)]
which.max(rainfall)
month.name[which.max(rainfall)]
which.min(rainfall)
month.name[which.min(rainfall)]

# 강수량보여주기
rainfall[rainfall>100]
rainfall[which.min(rainfall)]

rainfall

# 벡터원소에 이름 부여

traffic.death <- c(842,729,786,751,844,851,702)
names(traffic.death) <- c("Mon","Tue", "Wed", "Thu", "Fri","Sat","Sun")
traffic.death

traffic.death["Sat"]
traffic.death[c("Tue", "Thu")]
weekend <- c("Fri", "Sat", "Sun")
traffic.death[weekend]

# 벡터의 이름 추출하기
traffic.death > 800
traffic.death[traffic.death > 800]
names(traffic.death[traffic.death > 800])









# 팩터
# 팩터 만들기(레벨/범주 만들기)
review <- c("Good", "Good", "Indifferent", "Bad", "Good", "Bad")
review
review.factor <- factor(review)
review.factor

str(review.factor)
as.numeric(review.factor)

# 변수를 만들고(저장하고)
eventday <- c("Mon", "Mon", "Tue", "Wed", "Mon", "Wed", "Thu", "Fri", "Tue")
# 만든 변수를 팩터로 만든다
eventday.factor <- factor(eventday)
eventday.factor
# level 지정하기
eventday.factor <- factor(eventday, levels=c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"))

# level함수
levels(review.factor)
levels(review.factor) <- c("B", "G", "I")
review.factor

nlevels(review.factor)
length(levels(review.factor))

eval <- c("Medium", "Low", "High", "Medium", "High")
eval.factor <- factor(eval)

# 서열백터
factor(eval, levels=c("Low", "Medium", "High"), ordered=TRUE)
eval.ordered <- factor(eval, levels=c("Low", "Medium", "High"), ordered=TRUE)
eval.ordered

# 레벨당 값 갯수
table(eval.factor)
table(eval.ordered)

# 레벨을 범주형 데이터로 변환
sex <- c(2,1,2,2,1,0)
sex.factor <- factor(sex, levels=c(1,2), labels = c("Male", "Female"))
sex.factor

table(sex.factor)


rm(list = ls())



# 팩터 - forcats패키지, 팩터 함수 제공
c("Vegetables", "Fruits", "Vegetables", "Grains", "Fruits",
  "Vegetables", "Dairy", "Fruits", "Proteins", "Fruits")
food <- factor(c("Vegetables", "Fruits", "Vegetables", "Grains", "Fruits",
                 "Vegetables", "Dairy", "Fruits", "Proteins", "Fruits"))
# forcats 라이브러리 및 레벨 위치바꾸기
library(forcats)
fct_inorder(food)
fct_relevel(food, "Fruits", "Vegetables","Grains","Proteins","Dairy")
fct_relevel(food, "Proteins")
fct_relevel(food, "Proteins" ,after=2)
fct_relevel(food, "Proteins", after=Inf)

# 새 변수값에 의한 정렬(중위값에 따른 오름차순 정렬)
value <- c(1000, 1500, 1200, 700, 2000,
           2000, 1350, 2500, 15000, 3000)
food

fct_reorder(food, .x=value)
# 새 변수값에 의한 정렬(평균에 따른 오름차순 정렬)
fct_reorder(food, .x=value, .fun=mean)
# 새 변수값에 의한 정렬(내림차순 정렬)
fct_reorder(food, .x=value, .desc=TRUE)
# 기존레벨명 대체
fct_recode(food, Fats="Proteins", Fats="Dairy")



#행렬
v <- 1:12
v
dim(v) <- c(3,4)
v

# matrix
v <- 1:12
matrix(data=v, nrow=3, ncol=4)
# 열방향 행방향 정렬로 바꾸기
matrix(data=v, nrow=3, ncol=4, byrow=TRUE)
# 행렬 이름 지정
rnames <- c("R1", "R2", "R3")
colnames <- c("C1", "C2", "C3", "C4")
matrix(data=v, nrow=3, ncol=4, dimnames=list(rnames, colnames))
# 인수이름 지정 안하고 가능
matrix(0, 3, 4)
?matrix

matrix(NA, 3, 4)

matrix(v, ncol=4)

mat <- matrix(v, ncol=4)
mat
str(mat)
# 행과 열의 갯수
dim(mat)
dim(mat)[1]
nrow(mat)
length(mat)


# 열과 행방향으로 벡터 결합
rbind()
cbind()
v1 <- c(1,2,3,4,5)
v2 <- c(5,7,8,9,10)
rbind(v1, v2)
cbind(v1, v2)
# 행렬의 크기가 같을때만 사용가능한 bind함수
cbind(1:3, 4:6, matrix(7:12, 3, 2))
rbind(matrix(1:6,2,3), matrix(7:12,2,3))

rm(list = ls())
# 행렬 연산(같은차원)
mtx <- matrix(1:6, 2, 3)
mtx
mtx+1

a <- matrix(1:6,2,3)
b <- matrix(6:1,2,3)
a
b
a+b
a-b
a*b
a/b

# 행렬 연산(요소가 다를경우)
c <- matrix(6:1, 3, 2)
a+c
# 행렬곱
a <- matrix(1:6,2,3)
a
b <- matrix(1:6,3,2)
b
a %*% b

c <- matrix(1:6, 2, 3)
c
a
a%*%c

# 벡터와의 행렬곱(벡터의 재사용규칙)
mtx <- matrix(1:6,2,3)
mtx
mtx %*% 1:3
mtx %*% 1:2
1:2 %*% mtx

mtx+1:3

# 행렬합
mtx
rowSums(mtx)
colSums(mtx)
# 행평균
rowMeans(mtx)
colMeans(mtx)

# 행 전치(행과열 바꿈)
mtx
t(mtx)
1:5
t(1:5)
mtx[2,]
t(mtx[2,])




rm(list = ls())
# 행렬 인덱싱 
# 행렬 인덱싱 추출
v <- 1:12
mat <- matrix(v,3,4)
mat
str(mat)

mat[1,]
mat[,3]

# 행렬 인덱싱에서 벡터가 나오는것을 행렬로 유지
mat[1,,drop=FALSE]
mat[,3,drop=FALSE]
# 원래 인덱스가 유지되진 않는다
mat[2:3,]
mat[,3:4]
mat[1:2, 2:3]
mat[c(1,3),]


# 음수의 인덱스는 제거
mat[,-c(2,3)]
mat
# 인덱스를 통한 값 지정
mat[1,3] <- 77
mat
mat[2,] <- c(22,55)
mat
# 보통 열을 먼저 순서대로 채운다
mat[2:3,3:4] <- c(1,2,3,4)
mat
# 매트리스 할당
city.distance <- c(0,331,238,269,195,
                   331,0,95,194,189,
                   238,95,0,171,130,
                   269,194,171,0,77,
                   195,189,130,77,0)
city.distance
city.distance.mat <- matrix(city.distance, 5,5,byrow=TRUE)
city.distance.mat

colnames(city.distance.mat) <- c("Seoul","Busan","Daegu", "Gwangju","Jeonju")
city.distance.mat
rownames(city.distance.mat) <- c("Seoul","Busan","Daegu", "Gwangju","Jeonju")
city.distance.mat

city.distance.mat["Seoul","Busan"]
city.distance.mat[,"Seoul"]
city.distance.mat[c("Seoul","Gwangju"),]


rm(list = ls())






# 배열(3개이상의 차원)
a <- 1:24
a
dim(a) <- c(3,4,2)
a
# 배열도 열위주로 채워진다
array(1:12, c(2,3,2))

ary <- array(1:12, c(2,3,2))
ary
ary[1,3,2]
ary[,1,2]
# 배열 유지
ary[,1,2, drop=FALSE]
# 행과열을 가져오면 R프로그램에 의해 새롭게 열위주로 정렬됨
ary[2,,]

# 리스트 구조
list(0.6826, 0.9544, 0.9974)

list(1.23, "Apple", c(2,3,5,7), matrix(1:6, ncol=3), mean)

lst <- list()
lst
lst[[1]] <- 1.23
lst[[2]] <- "apple"
lst[[3]] <- c(2,3,5,7)
lst[[4]] <- matrix(1:6, ncol=3)
lst[[5]] <- mean
lst

lst <- list(0.6826, 0.9544, 0.9974)
lst
names(lst) <- c("sigma1", "sigma2", "sigma3")
lst
names(lst)

length(lst)

# 리스트의 결합
worldcup1 <- list("Brazil", "South Africa", "Germany")
worldcup2 <- list("Korea-Japan", "France", "USA")
worldcup1
worldcup2

c(worldcup1, worldcup2)

a <- list(1,2,3,4,5,6,7)
a
mean(a)
# 리스트 해체 함수
mean(unlist(a))

# 원소 내 데이터값과 원소 추출의 차이

product <- list("A001", "Mouse", 30000)
product

product[[3]]
product[3]

class(product[[3]])
class(product[3])

product[3]*0.9
product[[3]]*0.9


product[c(1,2)]

# 원소 빼기
product[c(FALSE, TRUE, TRUE)]
product[-1]
# 인덱스 수정하면서 인수넣기
product <- list(id="A001", 
                name="Mouse", 
                price=30000)

product
# 인덱스 원소 찾기
product[["name"]]

product$name

product[c("name", "price")]

# 같은 의미임 그러나 앞 1, 2번은 에러가 안뜸
product[["fourth"]]
product$fourth
product[[4]]

product[c(4,2,5)]
product[c("fourth", "name", "fifth")]

# 리스트안에 리스트넣기
lst <- list(one=1, two=2, three=list(alpha=3.1, beta=3.3))
lst

# 리스트안의 리스트의 원소 꺼내기
lst[["three"]]
lst[["three"]][["beta"]]

lst$three$beta


rm(list = ls())

# 원소 바꾸기
product <- list(id="A001",
                name="Mouse",
                price=30000)

product

product[[3]] <- 40000
product[["price"]] <- 40000
product$price <- 50000

# 원소가 하나일경우 괄호 한개도 가능
product[3] <- 30000
product["price"] <- 40000
product

# 원소가 두개이상일 경우 대괄호 두개만 가능
product[[3]] <- c(30000, 40000)
# 대괄호 한개 쓸때는 리스트로 바꿔줘야함
product[3] <- list(c(30000, 40000))


product[1:3] <- list("A002", "Keyboard", 90000)
product

#  추가 원소넣기
product[[4]] <- c("Domestic", "Export")
product

product$madein <- c("Korea", "China")
product[["madein"]] <- c("Korea", "china")
product["madein"] <- list(c("Korea", "China"))

# 여러개 인수 추가하기

product[6:9] <- list(0.12, 0.15, 0.22, 0.27)
product

# 기존데이터로 리스트만들기
names <- c("Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun")

values <- c(842, 729, 786, 751, 844, 851, 702)
# 빈 리스트도 가능
traffic.death <- list()
traffic.death

traffic.death[names] <- values
traffic.death

# 특정원소 제거
traffic.death[["Fri"]] <- NULL
traffic.death

traffic.death[c("Sat", "Sun")] <- NULL
traffic.death
# 함수를 이용한 원소 제거
traffic.death < 750
traffic.death[traffic.death < 750] <- NULL
traffic.death


# 데이터프레임 생성

v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)
data.frame(v1,v2,v3)
#행으로 벡터이름 지정하기
data.frame(row.names=v1,v2,v3)
# 열 이름 지정하기
data.frame(id=v1, name=v2, price=v3)

product <- data.frame(id=v1, name=v2, price=v3)
product

# 팩터로 취급 안하기..?
str(product)
product <- data.frame(id=v1, name=v2, price=v3, stringsAsFactors = FALSE)
str(product)
# 매트릭스 생성후 데이터프레임으로 변환
mat <- matrix(c(1,3,5,7,9,
              2,4,6,8,10,
              2,3,5,7,11), ncol=3)
mat
as.data.frame(mat)
number <- as.data.frame(mat)
number
# 데이터프레임에 열에 이름넣기
colnames(number) <- c("odd", "even", "prime")
number

# 리스트 데이터프레임으로 만들기
v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)
lst <- list(v1,v2,v3)
lst
# 구린 데이터프레임 이름 바꾸기
product <- as.data.frame(lst)
product
colnames(product) <- c("id", "name", "price")
product

nrow(product)
ncol(product)
length(product)

rm(list = ls())
# 데이터프레임 확장하기
id <- c("A001","A002","A003")
name <- c("Mouse", "Keyboard", "USB")
price <- c(30000, 90000, 50000)
# 팩터로 안쓰고 데이터프레임만들기
product <- data.frame(id, name, price, stringsAsFactors = FALSE)
product

# 4번째 행 추가하기
rbind(product, c("A004", "Monitor", 250000))

product <- rbind(product, c("A004", "Monitor", 250000))

product

# 데이터 프레임으로 행추가하기
new.rows <- data.frame(id=c("A005", "A006"),
                       name=c("Memory", "CPU"),
                       price=c(35000, 320000))

new.rows
product <- rbind(product, new.rows)
product

# 열추가하기
product <- cbind(product, madein=c("Korea", "China", "China", "Korea",
                                   "Korea", "USA"))
product

product$madein <- c("Korea", "China", "China", "Korea",
                    "Korea", "USA")
product

# 데이터 프레임으로 행추가하기

new.cols <- data.frame(manufacturer=c("Logitech", "Logitech", "Samsung",
                                      "Samsung", "Samsung", "Intel"),
                       quantity=c(20, 15, 50, 30, 40 ,10))
new.cols
product <- cbind(product, new.cols)
product

cols1 <- data.frame(x=c("a", "b", "c"),
                    y=c(1,2,3))

# cbind함수는 열의 이름을 이용해서 그대로 붙힌다
cols2 <- data.frame(x=c("alpha", "beta", "gamma"),
                    y=c(100,200,300))
cbind(cols1, cols2)

# 여러개의 리스트 데이터프레임화하여 합치기
lst1 <- list(sex="female", months="1", weight=3.5)
lst2 <- list(sex="male", months="3", weight=4.8)
lst3 <- list(sex="male", months="4", weight=5.3)
lst4 <- list(sex="female", months="9", weight=9.4)
lst5 <- list(sex="female", months="7", weight=8.3)
lst <- list(lst1, lst2, lst3, lst4, lst5)
lst
str(lst)

lst[[1]]
lst[[2]]
as.data.frame(lst[[1]])
# 리스트 원소 받아서 데이터 프레임으로 치환하는 함수
lapply(lst, as.data.frame)


# do.call함수 사용 합치기
do.call(rbind, lapply(lst, as.data.frame))





# 데이터프레임 인덱싱
?state
state.abb
state.area
state.name
state.region

us.state <- data.frame(state.abb, state.name, state.region, state.area,
                       stringsAsFactors = FALSE)
us.state
str(us.state)

# 인덱스로 데이터프레임의 원소 추출

us.state[[2]]
str(us.state[[2]])

us.state[2]
us.state[c(2,4)]
us.state[,2]
# 데이터 프레임형식 유지하면서 추출
us.state[,2, drop=FALSE]
# 여러가지 열 한꺼번에 추출
us.state[,c(2,4)]

# 열 이름으로 추출
us.state[["state.name"]]
us.state$state.name
us.state[,"state.name"]

# 리스트방식 인덱스 추출
us.state[c("state.name", "state.area")]
# 행렬방식 인덱스 추출
us.state[,c("state.name", "state.area")]

state.x77
head(state.x77)

# 행 제목 따서 새로운 열에 넣기

states <- data.frame(state.x77)
str(states)

row.names(states)
states$Name <- row.names(states)
states

row.names(states) <- NULL
head(states)

rm(list=ls())

# 특정 조건에 따른 원소들 추출
rich.states <- states[states$Income > 5000, c("Name", "Income")]
rich.states

large.states <- states[states$Area > 100000, c("Name", "Area")]
large.states

# 데이터프레임 결합

merge(rich.states, large.states)
merge(rich.states, large.states, all=TRUE)

# 반복되는 추출작업
rm(list= ls())


head(iris)

r <- iris$Sepal.Length / iris$Sepal.Width
head(r)

r <- with(iris, Sepal.Length / Sepal.Width)
head(r)

with(iris, {
  print(summary(Sepal.Length))
  plot(Sepal.Length, Sepal.Width)
  plot(Petal.Length, Petal.Width)
})

# with 함수내의 할당값이 동작하지 않으므로 다른걸로 할당함
with(iris, {
  stats <- summary(Sepal.Length)
  stats
})

stats

with(iris,{
  stats.nokeep <- summary(Sepal.Length)
  stats.keep <<- summary(Sepal.Length)
})

stats.nokeep
stats.keep

# with와 비슷하고 데이터프레임내 다른 작업가능
iris$Sepal.Ratio <- iris$Sepal.Length/iris$Sepal.Width
head(iris)

iris <- within(iris,
       Sepal.Ratio <- Sepal.Length/Sepal.Width)

head(iris)

# 데이터프레임 메모리에 적재하기
attach(iris)
search()
r <- Sepal.Length / Sepal.Width
head(r)

detach(iris)
search()

attach(iris)
iris$Sepal.Length <- 0
head(iris$Sepal.Length)
head(Sepal.Length)
detach(iris)
# 적재된 함수와 변경된 함수 구별하기
attach(iris)
Sepal.Width <- Sepal.Width*10

head(iris$Sepal.Width)
head(Sepal.Width)

detach(iris)
# 적재된 메모리와 새로 적재하는 메모리의 충돌
rm(Sepal.Width)

Sepal.Length <- c(4.5, 5.3, 6.7)

Sepal.Length

attach(iris)

plot(Sepal.Length, Sepal.Width)


rm(list = ls())


# 인덱싱 편하게하기
head(mtcars)

subset(mtcars, subset=(mpg > 30), select=mpg)

subset(mtcars, subset = (cyl==4 & am == 0), select=c(mpg, hp, wt))

subset(mtcars, subset=(mpg > mean(mpg)), select = c(mpg,cyl,wt))

# 상관계수 추출
head(USArrests)
cor(USArrests)
subset(USArrests, select=-UrbanPop)
cor(subset(USArrests, select=-UrbanPop))
cor(subset(USArrests, select=-c(UrbanPop, Rape)))

# sql 문장쓰기
install.packages("sqldf")
library(sqldf)
data("mtcars")
sqldf("select*from mtcars where mpg >30", row.names=TRUE)
sqldf("select * from mtcars where cyl=6 order by mpg", row.names = TRUE)
sqldf("select avg(mpg) as avg_mpg, avg(wt) as avg_wt, gear from mtcars where cyl in (4, 6) group by gear")

data(iris)

sqldf("select distinct Species from iris")
sqldf("select*from iris limit 3")

# sql은 .를 쓸수없다
sqldf('select avg("Sepal.Length") from iris where Species="setosa"')

rm(list = ls())






# tibble 함수

library(tibble)
v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)
product <- tibble(id=v1, name=v2, price=v3)
str(product)
product

tribble(
  ~id, ~name, ~price,
  "A001", "Mouse", 30000,
  "A002", "Keyboard", 90000,
  "A003", "USB", 50000
)

tb <- tibble(id=c(1,2,3),
             data=list(tibble(x=1, y=2),
                       tibble(x=4:5, y=6:7),
                       tibble(x=10)))
tb

tb$data
tb$data[[2]]

str(iris)
head(iris)
as_tibble(iris)
# tibble 함수로 변환(Lahman 함수 없음!)
library(Lahman)
str(Batting)
head(Batting)

Batting.tbl <- as_tibble(Batting)
Batting.tbl

print(Batting.tbl, n=20)
print(Batting.tbl, n=3, width=Inf)

# tibble을 데이터프레임으로 전환
class(Batting.tbl)
Batting.df <- as.data.frame(Batting.tbl)
class(Batting.df)

