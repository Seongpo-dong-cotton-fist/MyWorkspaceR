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

# help 함수와 같은기능
help(median)
?median

#함수 내 사용법 출력
args(median)

# 함수 사용예
example(median)

# 함수 이름이 잘 기억안날때 일부 문자열 포함 함수 찾기
help.search("xyplot")
??xyplot

# 특정 문자열 포함 벡터, 함수 찾기
hero.vector <- c("superman", "batman", "spiderman")
apropos("vector")

?regex

apropos("q$")

apropos("[7-9]")
apropos("xy+")

# 웹사이트로 r내용찾기
RSiteSearch("topicmodel")


install.packages("sos")
library(sos)
findFn("social network analysis")

#데이터 구조

#벡터는 문자면 문자 숫자면 숫자인 한종류의 논리값으로만 구성가능
c(1,2,3,4,5)
c("a", "b", "c", "a", "b")

# 팩터는 범주형 데이터로 구성(제품등급같이)
factor(c("a", "b", "c", "a", "b"))

#행렬 행3개 열 4개
matrix(1:12, 3, 4)

#배열(차원의 크기가 다를분 행렬과 같다 2*3*2
array(1:12, c(2,3,2))

#데이터 프레임(숫자와 문자 같이 존재가능,그러나 갯수가 같아야함)
data.frame(product=c("a", "b", "c"),
           price=c(100,200,300))

# 리스트( 이것저것 다 집합, 갯수 안같아도됨)
list(x=c("a", "b", "c", "a", "b"),
     y=matrix(1:12, 3, 4),
     z=data.frame(product=c("a", "b", "c"),
                  price=c(100,200,300)))




# 벡터 생성

c(1,2,3,4,5,6,7,8,9,10)
c("we", "love", "data","analytics")
c(TRUE, FALSE, TRUE, FALSE)

# 벡터 결합
odd <- c(1,3,5)
even <- c(2,4,6)
odd
even
c(odd,even)

# 연속숫자 생성
3:9
9:3
5:-3

# 정수가 아닌 간격으로 숫자만들기
?seq()
seq(from=3, to=9)
seq(from=3, to=9, by=2)
seq(from=3.5, to=1.5, by=-0.5)

# 수열 갯수 지정하여 일정간격 수 얻기
seq(from=0, to=100, length.out=5)
seq(from=-2, to=1, length.out=5)

# 반복
rep(1, times=3)
rep(c(1,2,3), times=3)
rep(c(1,2,3), each=3)
rep(c(1,2,3), times=c(1,2,3))
rep(c(1,2,3), length.out=8)

# 벡터는 항상 같은 문자면 문자, 숫자면 숫자로 쓰여야함 같이 묶으면 숫자가 문자로 바뀜

num <- c(1,2,3)
cha <- c("x", "y", "z")
c(num, cha)

# 벡터 내부구조 파악
str(num)
str(cha)

# 원소의 갯수
length(num)

# 내장형 상수 벡터
LETTERS
pi
letters
month.name

# 예시
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

# v와 w는 같은건가 물을때
v==w

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

# true false는 숫자로 반환가능
TRUE*TRUE
TRUE+TRUE
FALSE*TRUE
sum(y > 50)
# 하나라도 true일 경우 true
any(-3:3 > 0)
# 모두가 true일 경우 true
all(-3:3 > 0)

# 루트
sqrt(2)
# 루트 2^2는 2와 같지 않다
sqrt(2)^2 == 2
# 미세한 차이 무시
all.equal(sqrt(2)^2, 2)
# 너무 다를경우 왜다른지 설명함
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

# 자연상수 e
exp(1:5)
y <- exp(1:5)
log(y)

# 팩토리얼
factorial(1:5)
# 콤비네이션
choose(5, 2)

sqrt(1:5)

# 기본 지정된 소수점 확인
options("digits")
pi
pi*10
# 유효자리 수 설정
signif(456.789, digits = 3)

# 반올림
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
# 모든 원소는 인덱스를 갖고 있다
num <- 0:30
num
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
# 인덱스로 추가원소 넣기
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
# 논리 연산조건에 대한 값만 반환
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

# 레벨을 범주형 데이터로 변환, 레이블스 함수로 변수 데이터 바꾸기
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
# 빈도별로 정렬
fct_infreq(food)
# 레벨 순서 재지정
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
# 특정 행 원소 추출
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





# 리스트 구조(이것저것 다가능)
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
# 원소의 개수
length(lst)

# 리스트의 결합
worldcup1 <- list("Brazil", "South Africa", "Germany")
worldcup2 <- list("Korea-Japan", "France", "USA")
worldcup1
worldcup2

c(worldcup1, worldcup2)

# 리스트는 숫자 벡터로 치환해야 숫자로 인식한다
a <- list(1,2,3,4,5,6,7)
a
mean(a)
# 리스트 해체 함수
mean(unlist(a))

# 원소 내 데이터값과 원소 추출의 차이
# 2개 대괄호 <- 자루내 데이터 값 가져옴
# 1개 대괄호 <- 자루 자체를 갖고옴
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

# 빈리스트에 네임즈 변수 넣고 각 원소에 밸류값 할당
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
# 데이터프레임의 열은 항상 이름이 있어야함
data.frame(v1,v2,v3)
#행으로 벡터이름 지정하기
data.frame(row.names=v1,v2,v3)
# 열 이름 지정하기
data.frame(id=v1, name=v2, price=v3)

product <- data.frame(id=v1, name=v2, price=v3)
product

# 팩터로 취급 안하기..? 데이터프레임은 벡터를 자동으로 팩터로 지정
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

# 데이터 프레임으로 열추가하기

new.cols <- data.frame(manufacturer=c("Logitech", "Logitech", "Samsung",
                                      "Samsung", "Samsung", "Intel"),
                       quantity=c(20, 15, 50, 30, 40 ,10))
new.cols
product <- cbind(product, new.cols)
product

# cbind함수는 열의 이름을 이용해서 그대로 붙힌다
cols1 <- data.frame(x=c("a", "b", "c"),
                    y=c(1,2,3))

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

# 텍스트
# 텍스트 갯수세기
x <- "We have a dream"
x
nchar(x)
length(x)
y <- c("we", "have", "a", "dream")
y
nchar(y)
length(y)
nchar(y[4])
letters
sort(letters, decreasing=TRUE)

fox.says <- "It is only with the HEART that one can See Rightly"
fox.said <- "what is essential is invisible to the eye"
p1 <- "You come at four in the afternoon, then at three I shall begin to be happy"
p2 <- "One runs the risk of weeping a little, if one lets himself be tamed"
p3 <- "What makes the desert beautiful is that somewhere it hides a well"
fox.said <- "WHAT IS ESSENTIAL is invisible to the Eye"
txt <- "Data Analytics is useful. Data Analytics is also interesting."
words <- c("at", "bat", "cat", "chaenomeles", "chase", "chasse", 
           "cheap", "check", "cheese",  "chick", "hat")
words2 <- c("12 Dec", "OK", "http://", "<TITLE>Time?</TITLE>", "12345", "Hi there" )


tolower(fox.says)
toupper((fox.says))

#  텍스트 분리 결합
fox.said <- "What is essential is invisible to the eye"
strsplit(fox.said, split="")
strsplit(fox.said, split=" ")

# 분리텍스트 벡터화 및 인덱스로 내용추출
fox.said.words <- unlist(strsplit(fox.said, split=" "))
fox.said.words
unlist(strsplit(fox.said, split=" "))[[3]]


# 텍스트백터 합치기

p1 <- "You come at four in the afternoon, then at three I shall begin to be happy"
p2 <- "One runs the risk of weeping a little, if one lets himself be tamed"
p3 <- "What makes the desert beautiful is that somewhere it hides a well"

# 원소안에 원소 들어가기 및 추출
littleprince <- c(p1, p2, p3)
littleprince
strsplit(littleprince, " ")
strsplit(littleprince, " ")[[3]]
strsplit(littleprince, " ")[[3]][5]

# 중복되지 않는 함수 추출하기 
fox.said <- "WHAT IS ESSENTIAL is invisible to the Eye"
fox.said.words <- strsplit(fox.said, " ")[[1]]
unique(fox.said.words)
unique(tolower(fox.said.words))

# 텍스트 결합(한개의 벡터로)

paste("Everybody", "wants", "to", "fly")

# 이경우엔 안됨
paste(c("Everybody", "wants", "to", "fly"))

fox.said.words
paste(fox.said.words)

paste("Everybody", "wants", "to", "fly", sep="-")
paste("Everybody", "wants", "to", "fly", sep="")
paste0("Everybody", "wants", "to", "fly")
# 숫자와 문자결합
paste(p1, sqrt(p1))
paste("25 degres celsisius is", 25*1.8 +32, "degree Fahert")

heroes <- c("Batman", "Captain America", "Hulk")
colors <- c("Black", "Blue", "Green")
paste(heroes, colors)

# 페이스트함수 응용
paste("Type", 1:5)
paste(heroes, "watns", "to", "fly")

# 공백주면서 합치기
paste(c("Everybody", "wants", "to", "fly"), collapse = " ")
paste(heroes, "wants", "to", "fly", collapse=", and ")

paste(heroes, "wants", "to", "fly", sep = "-", collapse = ";")

paste(month.abb, 1:12)
paste(month.abb, 1:12, sep = "_")
paste(month.abb, 1:12, sep = "_", collapse = "-")

# 가능한 순서쌍의 곱 구하기(행렬형식)
outer(c(1,2,3), c(1,2,3))

asian.countries <- c("Korea", "Japan", "China")
info <- c("GDP", "Population", "Area")
outer(asian.countries, info, FUN = paste, sep="-")

# 벡터로 바꾸기
out <- outer(asian.countries, info, FUN = paste, sep="-")
as.vector(out)

outer(asian.countries, asian.countries, FUN=paste, sep="-")
x <- outer(asian.countries, asian.countries, FUN=paste, sep="-")
# 중복되지 않는 순서쌍 구하기
x[!lower.tri(x)]

# 변수써서 문장 출력
customer <- "Jobs"
buysize <- 10
deliveryday <- 3
paste("Hello", customer, ", your order of ", buysize, "product(s) will be dilivered within ", deliveryday, " day(s).", sep=" ")

sprintf("Hello %s  your order of %s product(s) will be dilivered within %s day(s).", customer, buysize, deliveryday)

customer <- c("Jobs", "Gates", "Bezos")
buysize <- c(10,7,12)
deliveryday <- c(3,2,7.5)
# 소수점출력
sprintf("Hello %s  your order of %s product(s) will be dilivered within %.1f day(s).", customer, buysize, deliveryday)

# 부분문자열 추출
substr("Data Analytics", start=1, stop = 4)

substring("Data Analytics", 6)

class <- c("Data Analytics", "Data Mining", "Data Visualization")
substr(class, 1, 4)

countries <- c("Korea, KR", "Unites State, US", "China, CN")
substr(countries, nchar(countries)-1, )

# 특정 문자열 포함 추출
head(islands)
landmasses <- names(islands)
landmasses
# 위치가 반환됨(인덱스값)
grep(pattern = "New", x=landmasses)
index <- grep(pattern = "New", x=landmasses)
landmasses[index]
# 값 반환
grep(pattern = "New", x=landmasses, value=TRUE)
landmasses[grep(" ", landmasses)]
grep(" ", landmasses, value=TRUE)

# 일치 첫 문자열 추출 및 치환
txt <- "Data Analytics is useful. Data Analytics is also interesting."
sub(pattern = "Data", replacement = "Business", x = txt)
# 일치 모든 문자열 추출 및 치환
gsub(pattern = "Data", replacement = "Business", x = txt)
x <- c("product.csv", "customer.csv", "supplier.csv")
gsub(".csv", "", x)

# 정규 표현식
words <- c("at", "bat", "cat", "chaenomeles", "chase", "chasse", 
           "cheap", "check", "cheese",  "chick", "hat")
grep("che", words, value=TRUE)
grep("at", words, value = TRUE)
# 문자 대괄호 a 또는 t에 해당되는 모든것 반환
grep("[at]", words, value=TRUE)
# ch 또는 at
grep("ch|at", words,value = TRUE)
# 패턴 줘서 찾기
grep("ch(e|i)ck", words, value=TRUE)
# s가 있어도 되고 없어도 될경우 찾기
grep("chas?e", words, value = TRUE)
# s가 0회 이상 모두
grep("chas*e", words, value = TRUE) 
# s가 1회 이상 모두
grep("chas+e", words, value = TRUE)
# a가 한번이상 반복, e가 한번이상 반복, 없어도 되는 패턴
grep("ch(a*|e*)se", words, value = TRUE)
# c로 시작
grep("^c", words, value = TRUE)
# t로 끝나는 단어
grep("t$", words, value = TRUE)
# c로 시작하고 중간에 아무문자 들어온다음 t로 끝나는게 0회이상
grep("^c.*t$", words, value = TRUE)
# h또는 c로 시작하는게 0또는 1회에 끝날때 at인것
grep("^[hc]?at", words, value = TRUE)

# 문자와 숫자조합 찾기
words2 <- c("12 Dec", "OK", "http://", "<TITLE>Time?</TITLE>", "12345", "Hi there" )
grep("[[:alnum:]]", words2, value = TRUE)
# 문자가 있는 벡터 찾기
grep("[[:alpha:]]", words2, value = TRUE)
# 숫자가 있는 벡터 찾기
grep("[[:digit:]]", words2, value = TRUE)
# 문장부호 포함 벡터 찾기
grep("[[:punct:]]", words2, value = TRUE)
# 공백 포함벡터 찾기
grep("[[:space:]]", words2, value = TRUE)

# 백슬래쉬 사용
# 숫자 문자 포함
grep("\\w+", words2, value = TRUE)
# 숫자
grep("\\d+", words2, value = TRUE)
# 공간
grep("\\s+", words2, value = TRUE)




# 정규표현식 패턴검출
string <- c("data analytics is useful",
            "business analytics is helpful",
            "visualization of data is interesting for data scientists")

grep(pattern = "data", x = string)
string[grep(pattern = "data", x=string)]
# 또는
grep("useful|helpful", string, value = TRUE)
# 매칭시 true false 반환
grepl(pattern = "data", x=string)
# 매칭값 갯수 찾기
state.name
sum(grepl("new", state.name, ignore.case = TRUE))

# 첫 매칭이 이뤄진 위치정보 벡터값으로 표시
regexpr(pattern = "data", text = string)
# 모든 매칭이 이뤄진 위치정보 벡터값으로 표시
gregexpr(pattern = "data", text = string)
# 첫 매칭데이터 추출
regmatches(x=string, m=regexpr("data", string))
# 모든 매칭데이터 추출
regmatches(x=string, m=gregexpr("data", string))
# 데이터 문자열 제외한 반대 결과 추출
regmatches(x=string, m=gregexpr("data", string), invert = TRUE)

# 매칭된 첫 특정문자열 치환
sub(pattern = "data", replacement = "text", x = string)
gsub(pattern = "data", replacement = "text", x = string)

# 문자 나누기
strsplit(x = string, split = " ")
# 벡터형식으로 나눈문자 보기
unlist(strsplit(x = string, split = " "))



# stingr 패키지 - base 패키지에 비해 인수 표현이 같다는점이 좋다
string <- c("data analytics is useful",
            "business analytics is helpful",
            "visualization of data is interesting for data scientists")

library(stringr)
# true false 매칭 논리값 반환(grepl과 비슷)
str_detect(string=string, pattern="data")
# 대소문자 안가리고 찾기
str_detect(string, "DATA")
str_detect(string, fixed("DATA", ignore_case = TRUE))
# 있는 그대로 찾기
str_detect(c("abz", "ayz", "a.z"), "a.z")
str_detect(c("abz", "ayz", "a.z"), fixed("a.z"))
# 같은내용
str_detect(c("abz", "ayz", "a.z"), "a\\.z")

# 첫 매칭 현황 리스트형으로 추출(=regexpr)
str_locate(string, "data")
# 모든 매칭 현황 리스트형으로 추출(=gregexpr)
str_locate_all(string, "data")

# 문자열추출(=regmatches)
str_extract(string, "data")
str_extract_all(string, "data")
# 행렬로 추출
str_extract_all(string, "data", simplify = TRUE)
# 벡터로 추출
unlist(str_extract_all(string, "data"))

# 인수의 그룹별 매칭 문자열 추출
sentences5 <- sentences[1:5]
# 관사 a the 가 나오고 공간하나에 단어가 출현하는 문자열 추출
str_extract(sentences5, "(a|A|the|The) (\\w+)")
# 각 원소에 대한 모든 a the 가 붙은거 문자열 추출 및 정보 행렬 
str_match(sentences5, "(a|A|the|The) (\\w+)")
str_match_all(sentences5, "(a|A|the|The) (\\w+)")

# 매칭된 문자 치환(=sub, gsub)
str_replace(string = string, pattern = "data", replacement = "text")
str_replace_all(string = string, pattern = "data", replacement = "text")

# 매칭된 문자 나누기(=strsplit)
str_split(string, " ")
# 벡터로 나오게
unlist(str_split(string, " "))
# 중복되지 않은 단어만 추출
unique(unlist(str_split(string, " ")))
# 원소 갯수 정하기
str_split(string, " ", n=3)
# 행렬로 보기
str_split(string, " ", simplify = TRUE)

# 문자 개수 출력
str_length(string)
# 특정 문자 개수 출력
str_count(string, "data")
# 단어 갯수 출력
str_count(string, "\\w+")

# 문자열 길이 맞추기(공백으로 채움움)
str_pad(string=c("a", "abc", "abcde"), width=6, side = "left", pad=" ")

mon <- 1:12
mon
str_pad(mon, width = 2, side = "left", pad="0")

# 공백 제거
str_trim()
# 가장 큰 string 의 문장 길이에 맞춰서 공백채우기
str.pad <- str_pad(string, width = max(str_length(string)), side = "both", pad = " ")
str.pad
str_trim(str.pad, side = "both")
str.pad

# 문자 결합
str_c("data", "mining", sep = " ")
str.mining <- str_c(c("data mining", "text mining", "is useful", sep=" "))
str.mining
str_c(str.mining, collapse = "; ")
# 엔터쳐서 구분하기
str_c(str.mining, collapse = "\n")
cat(str_c(str.mining, collapse = "\n"))

# 문자열 일부 추출
str_sub(string = str.mining, start=1, end=4)
str_sub(str.mining, 5, 5) <- "-"
str.mining
# 음수로 끝자리부터 카운팅
str_sub("abcdefg", start = -2)
str_sub("abcdefg", end = -3)


# 날짜

date()
# 날짜 서식으로 변환
as.Date("2025-12-31")
as.Date("2025/12/31")
as.Date("12/31/2025", format("%m/%d/%Y"))
?strptime

d <- as.Date("2025-12-31")
d
format(d, format="%m/%d/%Y")

# 날짜 포맷 바꾸기
today <- Sys.Date()
today
format(today, format="%Y/%m/%d")
format(today, format="%Y/%m/%d %A")
format(today, format="%Y/%m/%d %a")

# 날짜 계산하기

d <- as.Date("2025-12-31")
d
weekdays(d)
d
d+7
d+ 1:7

# 요일 뽑기
weekdays(d +1:7)

# 연속날짜 벡터추출
start <- as.Date("2025-01-01")
end <- as.Date("2025-01-31")
seq(from=start, to=end, by=1)
seq(from=start, by=1, length.out=7)
# 간격을 주고 연속으로 추출
seq(from=start, by="7 days", length.out=7)
seq(from=start, by="month", length.out=12)


# 월하고 분기 추출
start <- as.Date("2025-01-01")
qrt <- seq(from=start, by="3 month", length.out=4)
months(qrt)
quarters(qrt)

# 로케일, 컴퓨터상의 로컬환경에 변경에 따른 변수변경
Sys.getlocale()
Sys.setlocale("LC_TIME", "C")
months(qrt)
Sys.setlocale("LC_TIME", "Korean_Korea.949")
months(qrt)
# 로케일 기본값 짧게 설정하는법
Sys.setlocale()

# POSIX날짜
pct <- as.POSIXct("2025/03/15, 15:03:04", format="%Y/%m/%d, %H:%M:%S")
class(pct)
as.integer(pct)
# posixlt(리스트형 날짜)
plt <- as.POSIXlt("2025/03/15, 15:03:04", format="%Y/%m/%d, %H:%M:%S")
class(plt)
unclass(plt)
plt$mday
plt$mon
plt$year
plt$wday
plt$hour

# 요일 추출하기
dposix<- as.Date("2025-12-31")
dposix
as.POSIXlt(dposix)$wday

# 포식스만드는 다른 함수
strptime("2025-12-31", format="%Y-%m-%d")
class(strptime("2025-12-31", format="%Y-%m-%d"))
strptime("2025-12-31", format="%Y-%m-%d")$year+1900

# 날짜 시간정보 변수에에 저장및 사용
moon <- as.POSIXct("1969/07/20, 20:17:39", format="%Y/%m/%d, %H:%M:%S", tz="UTC")
moon
format(moon, "The time of the Apollo moon landing was %Y/%m/%d, at %H:%M:%S")

# posix 개체 다른 형식함수
y <- 2020
m <- 12
d <- 31
ISOdate(y, m, d)
class(ISOdate(y, m, d))
as.Date(ISOdate(y, m, d))
# 변수사용해서 만들기
years <- c(2025, 2026, 2027, 2028)
months <- c(1,4,7,10)
days <- c(12,19,25,17)
ISOdate(years, months, days)

# 변수사용해서 날짜 클래스 바꾸기
jdate <- as.Date("2025-12-31")
jdate
as.integer(jdate)
julian(jdate)
as.integer(as.Date("1970-01-01"))
as.integer(as.Date("1969-12-31"))

as.Date(as.integer(jdate), origin="1970-01-01")

# posix 날짜에 시간더하기
moon
class(moon)
moon + 60*60*2
moon + 60*60*24*7

as.Date(moon) + 7

# 특정일간 차이 구하기
start <- as.Date("1988-09-17")
end <- as.Date("2018-02-09")
start
end
end - start

# 날짜 차이 구하는 함수
today <- Sys.date()
Dooly <- as.Date("1983-04-22")
difftime(today, Dooly, units="days")

# 날짜 사이 부등식
moon
Sys.time() > moon
Sys.Date() > as.Date(moon)




# lubridate 패키지
library(lubridate)

# 날짜 뽑기
today()
now()

# 텍스트데이터에서 날짜뽑기
"2030-03-15"
ymd("2030-03-15")
"03/15/2030"
mdy("03/15/2030")
"15032030"
dmy("15032030")
ymd("300315")
ymd("2030년 3월 15일")
mdy("3월 15일, 2030년")
dmy("15-March-2030")

# 안될경우 및 로케일 수정으로 오류 고침
mdy("March 15th, 2030")

Sys.setlocale("LC_TIME", "C")
mdy("March 15th, 2030")
Sys.setlocale()

ymd(20300315)

# 시간정보 포함 날짜정보 생성
ymd_hms("2030-03-15 23:11:59")
ymd_hm("2030-03-15 23:11")
ymd_h("2030-03-15 23")

# 여러 원소로 날짜정보 생성
years <- c(2030, 2031,2032,2033)
months <- c(1,4,7,10)
days <- c(12,19,25,17)
hours <- c(3,7,11,20)
mins <- c(5,12,33,39)
secs <- c(15,5,27,55)

data.frame(years,months,days,hours,mins,secs)

dt <- data.frame(years,months,days,hours,mins,secs)
dt

make_date(year=dt$years, month=dt$months, day=dt$days)
make_datetime(year=dt$years, month=dt$months, day=dt$days, hour=dt$hours, min=dt$mins , sec=dt$secs)

# 날짜에 시간정보 넣고 빼기
ymd("2030-03-15")
as_datetime(ymd("2030-03-15"))
ymd_hms("2030-03-15 23:11:59")
as_date(ymd_hms("2030-03-15 23:11:59"))

# 날짜에서 특정정보 추출
datetime <- ymd_hms("1969/07/20, 20:17:39")
year(datetime)
month(datetime)
mday(datetime)
hour(datetime)
minute(datetime)
second(datetime)
# 그 해에 경과된 일수
yday(datetime)
# 요일 정수반환
wday(datetime)

# 요일순서 추출
Sys.setlocale("LC_TIME", "C")
month(datetime, label=TRUE)
wday(datetime, label=TRUE, abbr=FALSE)
Sys.setlocale()
month(datetime, label=TRUE)
wday(datetime, label=TRUE)

# 날짜에 특정일 수정하기
datetime
year(datetime) <- 2030
datetime
month(datetime) <- 8
datetime

update(datetime, year=2031, month=8, hour=11)
update(datetime, yday=1)

# 상하반기, 분기, 오전오후,
datetime <- ymd_hms("1969/07/20, 20:17:39")
datetime
semester(datetime)
quarter(datatime)
am(datetime)
pm(datetime)

# 시간단위 반올림 반내림, 올림, 내림
round_date(datetime, unit="year")
floor_date(datetime)
ceiling_date(datetime)

# 날짜함수 표시(벡터)
years(1)
months(3)
days(7)
weeks(2)

hours(c(12,24))
minutes(1:5)
seconds(seq(0, 10, by=2))

# 날짜 사칙연산
10*(months(6)+days(2))
moon <- ymd("1969/07/20")
moon + days(10000)
moon + months(1000)
moon - years(100)

mars <- ymd("2021/02/18")
mars
mars - moon

# interval 함수 일자말고 우리가 읽는 연월일 차이로 계산
interval(moon, mars)
class(interval(moon, mars))
moon %--% mars
as.period(moon %--% mars)
# 초단위
as.duration(moon %--% mars)

class(as.duration(moon %--% mars))

# 초단위 변환
dyears(1)
dweeks(1)
dhours(1)

2* dyears(1)
dyears(1) + dweeks(4) +dhours(2)

# 함수에따라 초가 있냐없냐 생김
ymd("2029-01-01") + years(1)
ymd("2029-01-01") + dyears(1)

leap_year(2029)
leap_year(2028)

years(1)/days(1)
(ymd("2028-01-01") %--% ymd("2029-01-01"))/ddays(1)

# 사용대 시간 확인
Sys.timezone()

OlsonNames()

# 함수별로 나라 시간대 확인하고 가공해보기
kst <- ymd_hm("2030-03-15 15:30", tz="Asia/Seoul")
kst

utc <- ymd_hm("2030-03-15 15:30")
utc

kst - utc

ny <- ymd_hms("2030-01-01 00:00:00", tz="America/New_york")
ny
with_tz(ny, tzone = "Asia/Seoul")



# 파일 import

setwd("F:/MyWorkspaceR/Intro-R_Example_Files1")
read.csv(file="product.csv")

read.csv("product-with-no-header.csv", header=FALSE)

read.table(file="product.txt")

read.table("product.txt", header=TRUE)

read.table("product-colon.txt", sep=":", header=TRUE)

read.table("product-missing.txt", header=TRUE)
read.table("product-missing.txt", header=TRUE, na.strings=".")

read.table("product-comment.txt", header=TRUE)

brand.eval <- read.table("brand-eval.csv", header=TRUE, 
                         row.names="BrandID", sep=",")
brand.eval
str(brand.eval)

brand.eval <- read.table("brand-eval.csv", header=TRUE, 
                         row.names="BrandID", sep=",", 
                         colClasses=c("character", "character", 
                                      "numeric", "numeric", "numeric"))
brand.eval
str(brand.eval)

read.fwf(file="product-fwf.txt", widths=c(4,-1,10,8))

read.fwf("product-fwf.txt", widths=c(4,-1,10,8), col.names=c("id", "name", "price"))

readLines(con="won-dollar.txt")

paste(readLines(con="won-dollar.txt"), collapse=" ")

readLines("won-dollar.txt", n=2)

scan(file="won-dollar.txt", what=character())

scan("won-dollar.txt", what=list(character(), numeric(), numeric()))

scan("won-dollar.txt", 
     what=list(date=character(), buy=numeric(), sell=numeric()))

scan("won-dollar.txt", 
     what=list(date=character(), buy=numeric(), sell=numeric()),
     nlines=2)
scan("won-dollar.txt",
     what=list(date=character(), buy=numeric(), sell=numeric()),
     skip=3)

library(readxl)
read_excel(path="product.xlsx", sheet=1)

library(openxlsx)
read.xlsx(xlsxFile="product.xlsx", sheet=1)

# 출력

pi
sqrt(3)
print(pi)
print(sqrt(3))

print(matrix(c(1,2,3,4), ncol=2))
print(list("Batman", "Spider", "Ironman"))

print("The square root of 3 is", sqrt(3), ".")
cat("The square root of 3 is", sqrt(3), ".")
cat("The square root of 3 is", sqrt(3), "\b.", "\n")

name <- "Jenny"
cat("Hello", name, "\b.\n", "Isn\'t it", "\t", "A LOVELY DAY?", "\n")

hero <- list("Batman", "Spider", "Ironman")
cat(hero)
cat(unlist(hero))

pi
pi*100
pi/100

print(pi, digits=3)

pnorm(-3:3)
print(pnorm(-3:3), digits=3)

z <- c(0, 1.64, 1.96, 2.58)
ptbl <- data.frame(Z=z, Lower=pnorm(-z), Upper=pnorm(z))
ptbl
print(ptbl, digits=3)

prime <- c(2,3,5,7,11,13,17,19)
cat(prime, file="prime.txt", sep="\t", "\n")

id <- c("A001", "A002", "A003")
name <- c("Mouse", "Keyboard", "USB")
price <- c(30000, 90000, 50000)
cat(id, file="product-cat.txt", sep="\t", "\n")
cat(name, file="product-cat.txt", sep="\t", append=TRUE, "\n")
cat(price, file="product-cat.txt", sep="\t", append=TRUE, "\n")

con <- file("product-cat2.txt", open = "w")
cat(id, file=con, sep = "\t","\n")
cat(name, file=con, sep = "\t","\n")
cat(price, file=con, sep = "\t","\n")
close(con)


fah <- readline("Fahrenheit? ")
fah <- as.numeric(fah)
print(paste("Fahrenheit =", fah))
cel <- (fah-32)/1.8
print(paste("Celsius =", cel))

sink("Fahrenheit-output.txt")
fah <- readline("Fahrenheit? ")
fah <- as.numeric(fah)
print(paste("Fahrenheit =", fah))
cel <- (fah-32)/1.8
print(paste("Celsius =", cel))
sink()


head(Orange)
write.csv(x=Orange, file="orange.csv")
write.csv(x=Orange, file="orange.csv", row.names=FALSE)

write.table(x=Orange, file="Orange.txt", sep=";", row.names = FALSE)

rm(list=ls())
ls()


z <- c(0, 1.64, 1.96, 2.58)
ptbl <- data.frame(Z=z, Lower=pnorm(-z), Upper=pnorm(z))
ptbl

save(ptbl, file="ptbl.RData")
rm(ptbl)
ptbl
ls()
load("ptbl.RData")

list.files()
list.files(recursive=TRUE)
list.files(all.files=TRUE)
list.files(pattern="*.txt")
list.dirs()
list.files(path="./examples")

file.create("temp.txt")
file.exists("temp.txt")
file.remove("temp.txt")


# 파일 R내에서 더블클릭하듯이 실행하기
openFileInOS("product.csv")


# read함수
library(pander)
library(readr)
read_csv(file="product.csv")
read_csv(file="product-with-no-header.csv", col_names=c("id","name","price"))


read_csv(file="product-missing.csv", na=".")

read_csv(file = "product-comment.csv", skip=1)

read_delim(file="product.txt", delim = " ")
read_delim(file="product-with-no-header.csv", delim=",", col_names=c("id","name","price"))

fwf_empty()
fwf_widths()
fwf_positions()
fwf_cols()

read_fwf(file="product-fwf.txt", col_positions = fwf_empty(file="product-fwf.txt", col_names = c("id","name","price")))

read_fwf(file="product-fwf.txt", col_positions = fwf_widths(widths=c(5,10,8), col_names = c("id","name","price")))

read_fwf(file="product-fwf.txt", col_positions = fwf_positions(start=c(1, 6, 16), end=c(5, 15, 23)))

read_fwf(file="product-fwf.txt", col_positions = fwf_cols(name=c(6, 15), price=c(16,23)))

read_table(file = "product-fwf.txt", col_names=c("id","name","price") )

read_table(file="product.txt",col_names=c("id","name","price"))

read_lines(file = "won-dollar.txt")
read_lines(file = "won-dollar.txt", skip=1, n_max = 3)
read_file(file = "won-dollar.txt")

Orange
write_csv(x=Orange, file= "orange.csv")
read_csv(file= "orange.csv")

write_delim(x=Orange, file="orange.txt", delim=";")
read_delim(file="orange.txt", delim=";")

write_lines(x=Orange$circumference, file="c.txt")
read_lines("c.txt")

parse_number("$100")
class(parse_number("$100"))
parse_number("30%")
parse_number("61.3kg")
parse_number("Salary per year: $250,000")





# 초기값

transLength <- function(x){
  tlength <- round(x*0.9144, digits=1)
  result <- paste(tlength, "m", sep="")
 return(result)
}
rm(list = ls())

y <- c(100,150,200)
transLength(y)

trans2 <- transLength
trans2
trans2(y)

transLength <- function(x){
  tlength <- round(x*0.9144, digits=1)
  result <- paste(tlength, "m", sep="")
 
}

transLength(y)
print(transLength(y))

transLength <- function(x){
  tlength <- round(x*0.9144, digits=1)
  paste(tlength, "m", sep="")
  
}
transLength(y)
transLength <- function(x){
  if(!is.numeric(x)) return("Not a Number")
  tlength <- round(x*0.9144, digits=1)
  paste(tlength, "m", sep="")
  
}
transLength("ABC")

f1 <- function(x,y) {x+y}
f2 <- function(x,y) x+y
f1(1,2)
f2(1,3)

transLength <- function(x) paste(round(x*0.9144, digits=1), "m", sep="")
transLength(y)

transLength <- function(x, mult, unit){
  tlength <- round(x*mult, digits=1)
  paste(tlength, unit, sep="")
}

transLength(y, mult=3, unit="ft")
transLength(y, mult=36, unit="in")

transLength(y)

transLength <- function(x, mult=0.9144, unit="m"){
  tlength <- round(x*mult, digits=1)
  paste(tlength, unit, sep="")
}

transLength(y)

transLength(y, mult=3, unit = "ft")
transLength(y, 3, "ft")

transLength <- function(x, mult=0.9144, unit="m", ...){
  tlength <- round(x*mult, ...)
  paste(tlength, unit, sep="")
}

transLength(y, digits=2)

transLength(y)

transLength <- function(x, mult=0.9144, unit="m", digits=1){
  tlength <- round(x*mult, digits=digits)
  paste(tlength, unit, sep="")
}

transLength(y)

transLength <- function(x, mult=0.9144, unit="m", FUN=round, ...){
  tlength <- FUN(x*mult, ...)
  paste(tlength, unit, sep="")
}

transLength(y)

ls()

x <- 11:15
scopetest <- function(x){
  cat("This is x: ", x, "\n")
  rm(x)
  cat("This is x after removing x", x, "\n")
}

scopetest(x=15:11)





# 논리흐름 제어

x <- pi
y <- 3
if (x>y) x
if (x < y) x

if (x < y) x else y

x <- pi
y <-1:5
if (x<y) x else y
if (x>y) x else y

test <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
yes <- 1:5
no <- 0
ifelse(test, yes, no)

ifelse (x>y,x , y)

center <- function(x,type){
  switch(type,
         mean=mean(x),
         median=median(x),
         trimmed=mean(x, trim=0.1)
         )
}
x <- c(2,3,5,7,11,13,17,23,29)
center(x, "mean")
center(x, "median")
center(x, "trimmed")

center <- function(x,type){
  switch(type,
         mean=mean(x),
         median=median(x),
         trimmed=mean(x, trim=0.1),
         "Choose one of mean, median, and trimmed"
  )
}
center(x, "other")
center(x, "trimmed")


repeat print("hello")

i <- 5
repeat {if(i > 25) break
  else {print(i)
    i <- i+5}
}

i <- 5
while (i <=25) {
  print(i)
  i <- i+5
}

for (var in list) statement

for (i in seq(from=5, to=25, by=5)) print(i)
for (i in seq(from=5, to=25, by=5)) print(i)

i <- 1
for (i in seq(from=5, to=25, by=5)) print(i)

#mode : numeric, character, logical, list, function
mode(1.414)
mode(c(1.414, 1.732))
mode("batman")
mode(c("batman", "Superman"))
mode(factor("High", "Medium", "Low"))
mode(as.Date("2030-12-31"))
mode(5 > 2)
mode(list(1.23, "Apple", c(2,3,545,6)))
mode(data.frame(x=1:3, y=c("H","M","L")))
mode(mean)

# class

d <- as.Date("2030-12-31")
mode(d)
length(d)
class(d)
as.integer(d)
d + 1

print.Date()
print.data.frame()
print.lm()
methods(print)

as.character()
as.numeric()
as.integer()
as.logical()

as.numeric(1.618)
as.integer(1.618)
as.character(1.618)
as.numeric("gold")

as.numeric(c("-1", "1.618", "3.14"))
as.numeric(c("-1", "1.618", "3.14", "and"))
as.character(11:15)

as.numeric(FALSE)
as.numeric(TRUE)

# 데이터 구조에서의 변환
as.data.frame()
as.list()
as.matrix()
as.vector()
as.factor()

is.data.frame()
is.list()
is.matrix()
is.vector()
is.factor()

# vector
vec <- 1:6
vec
as.list(vec)
list(vec)
cbind(vec)
as.matrix(vec)
rbind(vec)
matrix(vec,2,3)
as.data.frame(vec)
rbind(vec)
as.data.frame(rbind(vec))

# matrix
mat <- matrix(1:6, 2, 3)
mat
as.vector(mat)
as.list(mat)
as.data.frame(mat)

# list
lst <- list(odd=c(1,3,5), even=c(2,4,6))
lst
unlist(lst)
as.vector(lst)
lst2 <- list(odd=c(1,3,5), even=c("two","four", "six"))
lst2
unlist(lst2)
matrix(unlist(lst), 3, 2)
matrix(unlist(lst), 3,2, dimnames=list(NULL, names(lst)))
matrix(lst)
as.matrix(lst)
as.data.frame(lst)
as.data.frame(lst2)
str(as.data.frame(lst2)$odd)
str(as.data.frame(lst2)$even)

#data frame
dfm <- data.frame(odd=c(1,3,5), evne=c(2,4,6))
dfm
dfm[,1]
dfm[[1]]
dfm[1,]
str(dfm[1,])
as.vector(as.matrix(dfm))
dfm2 <- data.frame(odd=c(1,3,5), even=c("two","four","six"))
dfm2
as.vector(as.matrix(dfm))
as.list(dfm)
as.list(dfm2)
as.matrix(dfm)
as.matrix(dfm2)

# 행, 열결합, merge
#finance.yahoo.com: samsung Electonics, KRW
options("install.lock"=FALSE)
install.packages('quantmod')
library(quantmod)
sec <- getSymbols(Symbols="005930.KS", 
                  from="2021-10-01",
                  to="2021-12-31",
                  auto.assign = FALSE)
sec <- as.data.frame(sec)
str(sec)
head(sec[c("005930.KS.Close", "005930.KS.Volume")])

sec <- cbind(date=rownames(sec),symbol="005930.KS",sec[c("005930.KS.Close", "005930.KS.Volume")])
rownames(sec) <- NULL
colnames(sec)[c(3,4)] <- c("close", "volume")
head(sec)

hmc <- getSymbols(Symbols="005387.KS", 
                  from="2021-10-01",
                  to="2021-12-31",
                  auto.assign = FALSE)
hmc <- as.data.frame(hmc)
str(hmc)
head(hmc[c("005387.KS.Close", "005387.KS.Volume")])

hmc <- cbind(date=rownames(hmc),symbol="005387.KS",hmc[c("005387.KS.Close", "005387.KS.Volume")])
rownames(hmc) <- NULL
colnames(hmc)[c(3,4)] <- c("close", "volume")
head(hmc)
stock <- rbind(sec,hmc)
stock

#merge
fx <- getSymbols(Symbols="KRW=X", 
                  from="2021-10-01",
                  to="2021-12-31",
                  auto.assign = FALSE)
fx <- as.data.frame(fx)
str(fx)
head(fx[c("KRW=X.Close")])
fx <- cbind(date=rownames(fx),fx[c("KRW=X.Close")])
rownames(fx) <- NULL
colnames(fx)[c(2)] <- c("close")
head(fx)


intersect(names(sec), names(fx))

report <- merge(sec,fx,by="date")
report

v <- c(10,9,8,7,6,5,4,3,2,1)
match(7, v)
match(c(11,5,3,1,0),v)

head(mtcars)
car <- mtcars
car$name <- rownames(car)
car
rownames(car) <- NULL
head(car)

highhp.car <- car[car$hp > 145,]
highhp.car
lightwt.car <- car[car$wt < 3.2,]
lightwt.car

index <- match(highhp.car$name, lightwt.car$name)
index

lightwt.car[na.omit(index),]

v <- c(10,9,8,7,6,5,4,3,2,1)
7 %in% v
c(11,5,3,1,0) %in% v

index <- highhp.car$name %in% lightwt.car$name
index

highhp.car[index,]

str(mtcars)
mtcars$mpg
mtcars[["mpg"]]
mtcars[[1]]
mtcars[c(1,4)]
mtcars[c("mpg","hp")]

mtcars[-c(2,3,5,7:11)]

mtcars[-1]
mtcars[1] <- NULL
mtcars

mtcars[c(-1,2)]

str(iris)
iris[1:5,]
iris[,c("Sepal.Length", "Sepal.Width")]

iris[,"Sepal.Length"]
iris[,"Sepal.Length", drop=FALSE]
iris["Sepal.Length"]

iris[1:5,c("Sepal.Length", "Sepal.Width")]

iris[iris$Sepal.Length>7,]
iris[iris$Sepal.Length>7,c("Sepal.Length", "Sepal.Width")]

subset(iris, subset=(Sepal.Length > 7),
       select=c("Sepal.Length", "Sepal.Width","Species"))

#sort
x <-  c(3,7,5,1,2,5)
sort(x)
sort(x, decreasing=TRUE)

length(x) <- 7
x
sort(x)
sort(x, na.last = TRUE)
sort(x, na.last=FALSE)

y <- c(33,11,55,22,44)
order(y)
y[order(y)]

sort(y)

y <- c(33,11,55,22,44)
z <- c("superman", "batman", "ironman", "antman", "spiderman")
df <- data.frame(y,z)
df
order(df$y)
df[order(df$y),]
df[order(df$y, decreasing = TRUE),]
df[order(-df$y),]

w <- c("can fly", "cannot fly", "cannot fly","can fly","cannot fly")
df <- data.frame(y,z,w)
df
df[order(df$w, df$y),]
library(dplyr)

df[order(desc(df$w),y),]
arrange(df, w, y)
arrange(df, desc(w),y)
#비복원추출 랜덤샘플
sample(x=1:10, size = 5)
sample(x=10, size=5)

sample(x=10, size=5, replace=TRUE)

sample(10)
set.seed(1)
sample(x=100, size=5, replace=TRUE)
sample(x=100, size=5, replace=TRUE)
sample(x=100, size=5, replace=TRUE)

sample(iris, 3)       

set.seed(1)
index <- sample(nrow(iris), 3)
index
iris[index,]

duplicated(c(1,2,3,1,1,4,3))

id <- c("A001", "A002", "A006")
name <- c("Mouse", "Keyboard", "USB")
price <- c(30000, 90000, 50000)
product <- data.frame(id=id, name=name, price=price)
product
product <- rbind(product, c("A001", "Mouse", 30000))
product

duplicated(product)
product[!duplicated(product),]
which(duplicated(product))
index <- which(duplicated(product))
product[-index,]

unique(product)

str(airquality)

complete.cases(airquality)

airquality.nona <- airquality[complete.cases(airquality),]
str(airquality.nona)

airquality.nona <- na.omit(airquality)
str(airquality.nona)

cut(x=iris$Sepal.Width, breaks=c(0,1,2,3,4,5))
cut(x=iris$Sepal.Width, breaks=5)

iris.cut <- cut(x=iris$Sepal.Width, breaks=c(0,1,2,3,4,5))
table(iris.cut)
summary(iris.cut)
iris.cut <- cut(x=iris$Sepal.Width, 
                breaks=c(0,1,2,3,4,5),
                labels=c("Smaller","Small","Medium","big","Bigger"))
iris.cut
table(iris.cut)

#apply 함수들
?apply

x <- matrix(1:20, 4, 5)
x
apply(X=x, MARGIN=1, FUN=max)
apply(X=x, MARGIN=2, FUN=min)

y <- array(1:24, c(4,3,2))
y

apply(y, 1, paste, collapse=",")
a <- c(1,5,9,13,17,21
       )
a
paste(a)
paste(a, collapse = ",")

apply(y, 2, paste, collapse=",")
apply(y, 3, paste, collapse=",")

apply(y, c(1,2), paste, collapse=",")

Titanic
str(Titanic)

apply(Titanic, 1, sum)

apply(Titanic, 4, sum)
apply(Titanic, "Class", sum)
apply(Titanic, c(1,4), sum)

lapply()
sapply()

exams <- list(s20=c(78,89,91,85,95,98),
              s21 = c(85,86,97,99,90),
              s22 = c(98,96,89,90,93,85,92),
              s23 =c(98,96,91,88,93,99))
exams

lapply(exams, length)
sapply(exams, length)

sapply(exams, mean)
sapply(exams, sd)

sapply(exams, range)

head(iris)

lapply(iris, class)
sapply(iris, class)

sapply(iris, mean)
sapply(iris, function(x) ifelse(is.numeric(x), mean(x), NA))

mapply(rep, 1:4, 4:1)
rep(1,4)
rep(2,3)
rep(3,2)
rep(4,1)



#map
exams <- list(s20=c(78,89,91,85,95,98),
              s21 = c(85,86,97,99,90),
              s22 = c(98,96,89,90,93,85,92),
              s23 =c(98,96,91,88,93,99))
library(purrr)
map(.x=exams, .f=mean)

map_lgl()
map_int()
map_dbl()
map_chr()
    
map_dbl(exams, mean)
?mean
map_dbl(exams, mean, trim=0.3)
exams %>%
  map_dbl(mean, trim=0.3)

exams %>%
  map(range)
exams %>%
  map(range) %>%
  map_dbl(diff)

exams %>%
  map(function(x) x*1.1)

exams %>%
  map(~.*1.1)

fruits <- c("Apple", "Banana", "Strawberry")
fruits%>%
  map_chr(paste, "Juice", sep="-")
fruits%>%
  map_chr(~paste(.x, "Juice", sep="-"))

lst <- list(list(num=1:3, letters[1:3]),
            list(num=101:103, chr=letters[4:6]),
            list(),
            list(num=c(9, 99), chr=letters[7:9]))
lst

lst %>%
  map("num", .default="???")

lst %>%
  map("chr", .default=NA)

lst %>%
  map(2, .default=NA)

lst %>%
  map(c(2,2))

lst %>%
  map_chr(c(2,2), .default=NA)

lst %>%
  map(list("num", 3))
lst %>%
  map(list("num", 3), .default=NA)

str(USArrests)
USArrests %>%
  map_dbl(mean)
USArrests %>%
  map_dbl(range)
USArrests %>%
  map(range)
USArrests %>%
  map_dfr(range)

str(mtcars)

mtcars %>%
  split(.$am)
models <- mtcars %>%
  split(.$am) %>%
  map(~lm(mpg ~ wt, data=.))
  
models
model0 <- summary(models$`0`)
str(model0)

names(model0)
model0$r.squared

models %>%
  map(summary) %>%
  map_dbl(function(x) x$r.squared)
models %>%
  map(summary) %>%
  map_dbl(~.$r.squared)
models %>%
  map(summary) %>%
  map_dbl(~.x$r.squared)
models %>%
  map(summary) %>%
  map_dbl("r.squared")

mtcars %>%
  split(.$am) %>%
  map(~lm(mpg ~ wt, data=.)) %>%
  map(summary) %>%
  map_dbl("r.squared")


#map2

a <- list(1,2,3)
map(.x=a, .f=function(x) x*1.1)

map2_*lgl()
map2_*int()
map2_*dbl()
map2_*chr()
pmap_*lgl()
pmap_*int()
pmap_*dbl()
pmap_*chr()

a <- list(1,2,3)
b <- list(10,20,30)
map2(.x=a, .y=b, .f=function(first, second) second - first)

map2(.x=a, .y=b, .f=~.y-.x)

map2_dbl(a, b, ~.y-.x)

set.seed(123)
map2(b,a,rnorm, n=5)
?rnorm

set.seed(123)
list(rnorm(mean=10, sd=1, n=5),
     rnorm(mean=20, sd=2, n=5),
     rnorm(mean=30, sd=3, n=5))

str(mtcars)

by.am <-  mtcars %>%
  split(.$am)
by.am

models <- by.am %>%
  map(~lm(mpg ~wt, data=.))
models

map2(models, by.am, predict)

list(predict(models$`0`, by.am$`0`),
  predict(models$`1`, by.am$`1`))

a <- list(1,2,3)
b <- list(10,20,30)
c <- list(100,200,300)
pmap(.l=list(a,b,c), .f=sum)
pmap_dbl(.l=list(a,b,c), .f=sum)
pmap(list(a,b,c),
     function(first, second, third)
       second - first +third)

pmap(list(a,b,c), ~..2-..1+..3)

pmap_dbl(list(alpha=a, beta=b, gamma=c),
         function(gamma,beta, alpha)
           beta - alpha + gamma)

plus <- function(x,y) x+ y
pmap_dbl(list(a,b,c), plus)
plus2 <- function(x,y, ...) x+ y
pmap_dbl(list(a,b,c), plus2)

args <- list(mean=c(0, 5, 10),
             sd=c(1,2,3),
             n=c(1,3,5))
set.seed(123)
args %>%
  pmap(rnorm)

set.seed(123)
list(rnorm(mean=0, sd=1, n=1),
     rnorm(mean=5, sd=2, n=3),
     rnorm(mean=10, sd=3, n=5))


args.df <- data.frame(mean=c(0, 5, 10),
             sd=c(1,2,3),
             n=c(1,3,5))
set.seed(123)
args.df %>%
  pmap(rnorm)

args2 <- list(c(0, 5, 10),
             c(1,2,3),
             c(1,3,5))
set.seed(123)
args2 %>%
  pmap(rnorm)


#purrr reduce 패키지

reduce(.x=c(1,3,5,7), .f=`*`)
((1*3)*5)*7

paste2 <- function(u, v, sep=".") paste(u,v,sep=sep)
letters[1:4] %>%
  reduce(paste2)

dfs <- list(data.frame(name="Superman", age=30),
            data.frame(name=c("Spiderman", "Wonderwoman"),
                       sex=c("M","F")),
            data.frame(name="Batman", grade="A"))
dfs

library(dplyr)
dfs %>%
  reduce(bind_rows)

vs <- list(c(1,3,5,6,7,8,10),
           c(2,3,7,8,10),
           c(1,2,3,5,7,9,10))

vs
vs %>%
  reduce(intersect)

set.seed(123)
x <- sample(10)
x
x %>%
  reduce(`+`)
x %>%
  accumulate(`+`)

reduce2(.x=letters[1:4], .y=c("-", ".", "-"), .f=paste2)
accumulate2(.x=letters[1:4], .y=c("-", ".", "-"), .f=paste2)

#dplyr함수

head(airquality)
library(dplyr)

air <- filter(airquality, Month==6)

airquality[airquality$Month==6,]
subset(airquality, subset=(Month==6))

air <- filter(airquality, Month==6, Temp > 90)
head(air)

air <- filter(airquality, Month==6, Ozone > 80|Temp > 90)
head(air)

slice(airquality, 6:10)
slice(airquality, n())
slice(airquality, (n()-4):n())

air <- arrange(airquality, Temp, Month, Day)
head(air)
air <- arrange(airquality, desc(Temp), Month, Day)
head(air)

air <- select(airquality, Month, Day, Temp)
head(air)
air

air <- select(airquality, -(Temp:Day))
head(air)

air <- select(airquality, Solar=Solar.R)
head(air)

air <- rename(airquality, Solar=Solar.R)
head(air)

distinct(select(airquality, Month))

air <- mutate(airquality, 
       Temp.C=(Temp-32)/1.8,
       Diff= Temp.C-mean(Temp.C))
# transform 변수는 같은 문장에 생성된 함수를 같은 코드줄에 사용 불가능함
head(air)

summarise(airquality,
          Mean=mean(Temp, na.rm=TRUE),
          Median=median(Temp, na.rm=TRUE),
          SD=sd(Temp, na.rm=TRUE),
          Max=max(Temp, na.rm=TRUE),
          Min=min(Temp, na.rm=TRUE),
          N=n(),
          Distinct.Month=n_distinct(Month),
          Distinct.First=first(Month),
          Distinct.Last=last(Month))

sample_n(airquality, 5)
sample_frac(airquality, 0.05, replace=TRUE)

air.group <- group_by(airquality, Month)
class(air.group)
head(air.group)
air.group

summarise(air.group,
          Mean.Temp=mean(Temp, na.rm=TRUE))
summarise(air.group,
          Mean.Temp=mean(Temp, na.rm=TRUE),
          SD.Temp=sd(Temp, na.rm=TRUE),
          Days=n())

iris %>% head

1:10 %>% mean

a1 <- select(airquality, Ozone, Temp, Month)

a2 <- group_by(a1, Month)

a3 <- summarise(a2,
                Mean.Ozone=mean(Ozone, na.rm=T),
                Mean.Temp=mean(Temp, na.rm=T))
a3

a4 <- filter(a3, Mean.Ozone > 40 | Mean.Temp > 80)
a4


air <- airquality %>% 
  select(Ozone, Temp, Month) %>% 
  group_by(Month) %>% 
  summarise(Mean.Ozone=mean(Ozone, na.rm=T),
            Mean.Temp=mean(Temp, na.rm=T)) %>% 
  filter(Mean.Ozone > 40 | Mean.Temp > 80)
air

#dplyr join

df1 <- data.frame(x=1:6, y=month.name[1:6])
df2 <- data.frame(x=7:12, y=month.name[7:12])
df1
df2
df3 <- bind_rows(df1, df2)
df3
rbind(df1, df2)

df4 <- data.frame(z=month.abb)
df4
df5 <- bind_cols(df3, df4)
df5
cbind(df3, df4)

band_members
band_instruments

inner_join(x=band_members, y=band_instruments)
inner_join(x=band_members, y=band_instruments, by="name")

left_join(x=band_members, y=band_instruments, by="name")
right_join(x=band_members, y=band_instruments, by="name")
full_join(x=band_members, y=band_instruments, by="name")

band_instruments2
full_join(band_members, band_instruments2, by=c("name"="artist"))
full_join(band_members, band_instruments2, by=c("name"="artist"), keep=T)

semi_join(x=band_members, y=band_instruments, by="name")
anti_join(x=band_members, y=band_instruments, by="name")

#reshape2
install.packages("reshape2")
library(reshape2)

smiths

melt(data=smiths)
?melt

melt(data=smiths,
     id.vars = "subject")
melt(data=smiths,
     measure.vars = c(2:5))
melt(data=smiths,
     measure.vars = c("time","age","weight","height"))
smiths.long <- melt(data=smiths,
     id.vars = "subject",
     measure.vars = c("time","age","weight","height"),
     variable.name = "var",
     value.name = "val")
smiths.long

?dcast
dcast(data=smiths.long, formula=subject ~ var,
      value.var = "val")

head(airquality)
aq.long <- melt(airquality,
                id.vars=c("Month", "Day"))
head(aq.long)
tail(aq.long)

aq.wide <- dcast(aq.long,
                 Month + Day ~ variable,
                 value.var = "value")
head(aq.wide)

?dcast
dcast(aq.long, Month ~ variable)
dcast(aq.long, Month ~ variable,
      fun.aggregate =mean, na.rm=T)

#tidyr

install.packages("tidyr")
library(tidyr)

head(airquality)

?gather

aq.long <- gather(airquality,
                  key = Factor,
                  value=Measurement,
                  Ozone:Temp)
head(aq.long)
aq.long <- gather(airquality,
                  key = Factor,
                  value=Measurement,
                  -Month, -Day)
head(aq.long)
aq.long <- gather(airquality,
                  key = Factor,
                  value=Measurement,
                  1:4)
head(aq.long)
aq.long <- gather(airquality,
                  key = Factor,
                  value=Measurement,
                  Ozone, Solar.R,Wind, Temp)
head(aq.long)

airquality %>% gather(Factor, Measurement, Ozone:Temp)

aq.wide <- spread(data=aq.long, key=Factor, value=Measurement)
head(aq.wide)

aq.long %>% spread(key=Factor, value=Measurement)

seperate()
unite()

head(iris)
iris.long <- gather(iris, Element, Measurement,
                    -Species)
head(iris.long)

iris.sep <- separate(data=iris.long,
                     col=Element,
                     into=c("Part", "Measures"))
head(iris.sep)

iris.unite <- unite(data=iris.sep,
                    col = Factor,
                    Part, Measures,
                    sep="_")
head(iris.unite)

#tydyr pivot longer/wider

head(airquality)
?pivot_longer

aq.long <- pivot_longer(data=airquality,
                        cols=Ozone:Temp,
                        names_to ="Factor" ,
                        values_to ="Measurement" )
head(aq.long)

?pivot_wider

aq.wide <- pivot_wider(data=aq.long,
                       names_from=Factor,
                       values_from=Measurement)
head(aq.wide)

#tidyr nest
library(tidyr)
df <- tibble(x=c(1,1,1,2,2,3), y=1:6, z=6:1)
df
df.nested <- nest(.data=df, ndata=c(y, z))
df.nested
df.nested$ndata
df.nested$ndata[[2]]

unnest(df.nested, cols=ndata)

head(iris)

iris.nested <- iris %>%
  nest(sepal=c("Sepal.Length", "Sepal.Width"),
       petal=c("Petal.Length", "Petal.Width"))
iris.nested$sepal

head(mtcars)

library(dplyr)
mtcars.n <- mtcars %>% 
  group_by(cyl) %>% 
  nest()
mtcars.n$data

library(purrr)

mtcars.m <- mtcars.n %>% 
  mutate(model=map(data, ~lm(mpg ~ wt, data=.x))) %>% 
  arrange(cyl)
mtcars.m
mtcars.m$model

mtcars.m %>% 
  transmute(cyl, beta=map_dbl(model, ~coefficients(.)[[2]])) %>% 
  ungroup()

# graphic
str(faithful)

plot(faithful)

eruptions.long <- faithful[faithful$eruptions > 3, ]

points(eruptions.long, col="red", pch=19)

dev.off()
points(eruptions.long, col="red", pch=19)

faithful.lm <- lm(waiting ~ eruptions, data=faithful)

plot(faithful)
points(eruptions.long, col="red", pch=19)
lines(x=faithful$eruptions, y=fitted(faithful.lm), col="blue")

abline(v=3, col="purple")
abline(h=mean(faithful$waiting), col="green")
abline(faithful.lm, col="blue")

# generic function
str(cars)
plot(cars$speed, cars$dist)
plot(cars)

str(ToothGrowth)
plot(ToothGrowth$supp, ToothGrowth$len)

str(iris)
plot(iris[,1:4])

str(nhtemp)
plot(nhtemp)

str(UCBAdmissions)
plot(UCBAdmissions)

str(faithful)
faithful.lm <- lm(waiting ~ eruptions, data=faithful)
class(faithful.lm)
plot(faithful.lm)

plot(faithful)
list.files(pattern="sgoi.jpeg")
library(pander)
openFileInOS("sgoi.jpeg")

windows(width=12, height=8)
plot(faithful)
savePlot(filename = "sgoi", type = "pdf")
list.files(pattern="sgoi.pdf")
openFileInOS("sgoi.pdf")

?png
?pdf
?postscript

png("sgoi.png", width=648, height = 432)
plot(faithful)
dev.off()
list.files(pattern="sgoi.png")
openFileInOS("sgoi.png")

# 그래프 패러미터 설정
plot(faithful)


#제목과 축
plot(faithful,
     main="Old Faithful Geyser",
     sub="Yellowstone National Park",
     xlab="Eruption time(minutes)",
     ylab="waiting time (minutes")

?par

plot(faithful, las=0)
plot(faithful, las=1)
plot(faithful, las=2)
plot(faithful, las=3)

plot(faithful, bty="o")
plot(faithful, bty="n")
plot(faithful, bty="l")
plot(faithful, bty="]")

#심볼과 선

plot(faithful, pch=3)
plot(faithful, pch=8)
plot(faithful, pch=19, col="green3")
plot(faithful, pch=21, col="dimgray", bg="red")

str(LakeHuron)
plot(LakeHuron)
plot(LakeHuron, lty="solid")
plot(LakeHuron, lty="dashed")
plot(LakeHuron, lty="dotted")
plot(LakeHuron, lty="dotdash")
plot(LakeHuron, lty="longdash")
plot(LakeHuron, lty="twodash")
plot(LakeHuron, lty=6, col="red")

# 그래프 유형

str(pressure)
plot(pressure)
plot(pressure, type="p")
plot(pressure, type="s")
plot(pressure, type="b")

x <- 1:10
y1 <- exp(1:10)
y2 <- exp(10:1)
plot(x, y1, xlab="x", ylab="y", type="n")
lines(x, y1, type= "o", pch=21, col="red")
lines(x, y2, type= "o", pch=22, col="blue")

plot(faithful)
plot(faithful, type="n")
grid()
points(faithful, pch=19, col="blue")

plot(faithful, pch=19, col="blue")
grid()

#색상
colors()

palette(rainbow(6))
palette()
palette("default")

# col="white", col="#FFFFFF", col=rgb(1,1,1), col=hsv(0,0,1)

n <- 12
pie(rep(1,n),col=1:n)

rainbow()
heat.colors()
terrain.colors()
topo.colors()
cm.colors()
cm.colors()
gray()

pie(rep(1,n),col=rainbow(n))
pie(rep(1,n),col=heat.colors(n))
pie(rep(1,n),col=terrain.colors(n))
pie(rep(1,n),col=topo.colors(n))
pie(rep(1,n),col=cm.colors(n))
pie(rep(1,n),col=gray(level=seq(0, 1, length=12)))

pie(rep(1,n),col=rainbow(n, alpha=seq(0,1, length=n)))
pie(rep(1,n),col=gray(level=seq(0,1,length=n),
                      alpha=seq(0,1,length=n)))

library(RColorBrewer)
?RColorBrewer

display.brewer.all()
display.brewer.pal(3, "Dark2")
display.brewer.pal(9, "Blues")

n <- 9
pie(rep(1,n), col = brewer.pal(n, "Blues"))
pie(rep(1,n), col = brewer.pal(n, "Greens"))
pie(rep(1,n), col = brewer.pal(n, "BuGn"))
pie(rep(1,n), col = brewer.pal(n, "GnBu"))

plot(faithful, pch=19, col="tomato",
     main="Old Faithful Geyser",
     sub="Yellowstone National Park",
     xlab="Eruption time(minutes)",
     ylab="waiting time (minutes",
     col.main="navy", col.sub="purple", col.lab="royalblue", col.axis="brown")

# 크기

x <- seq(0.5, 1.5, 0.25)
y <- rep(1,length(x))

plot(x,y, pch=19, cex=x,
     main="Effects of ces on symbol and text size")
text(x, y+0.2, labels=x, cex=x)
plot(x, y, pch=19, cex=x,
     main="Effects of ces on symbol and text size",
     cex.main=1.5, cex.lab=1.0, cex.axis=0.75)

plot(LakeHuron, lwd=1)
plot(LakeHuron, lwd=2)

# 글꼴과 글씨체

windowsFonts()
plot(faithful, pch=19, col="tomato",
     main="Old Faithful Geyser",
     sub="Yellowstone National Park",
     xlab="Eruption time(minutes)",
     ylab="waiting time (minutes",
     family="sans")

windowsFonts(
  A=windowsFont("Arial Black"),
  B=windowsFont("Book Antiqua"),
  C=windowsFont("Calisto MT")
)
plot(faithful, pch=19, col="tomato",
     main="Old Faithful Geyser",
     sub="Yellowstone National Park",
     xlab="Eruption time(minutes)",
     ylab="waiting time (minutes",
     family="B")

?par

plot(faithful, pch=19, col="tomato",
     main="Old Faithful Geyser",
     sub="Yellowstone National Park",
     xlab="Eruption time(minutes)",
     ylab="waiting time (minutes",
     family="serif",
     font.main=4, font.sub=1,
     font.lab=3, font.axis=2)


# 그래프 배치

windows()
windows(width=12, height=8)
plot(faithful, pch=19, col="tomato",
     main="Old Faithful Geyser",
     sub="Yellowstone National Park",
     xlab="Eruption time(minutes)",
     ylab="waiting time (minutes",
     family="sans")

par("mai")
old.par <- par(mai=c(1,0.5,1,0.2))

par("mai")
par(old.par)

par("mar")
old.par <- par(mar=c(5,4,4,2)+0.2)
par("mar")

par(old.par)
par("mar")


x1 <- 1:10
y1 <- log(x1)
x2 <- 1:10
y2 <- sqrt(x2)

plot(x1, y1, type="l", col="red", xlab="x", ylab="y")
lines(x2, y2, lty="dashed", col="blue")

range(y1)
range(y2)

xlim <- range(c(x1,x2))
ylim <- range(c(y1,y2))

plot(x1, y1, xlim=xlim, ylim=ylim,type="l", col="red", xlab="x", ylab="y")
lines(x2, y2, lty="dashed", col="blue")

par("mfrow")
old.par <- par(mfcol=c(2,2))
par("mfcol")

plot(faithful, pch=19, col="tomato",
     main="First: Old Faithful Geyser",
     sub="Yellowstone National Park",
     xlab="Eruption time(minutes)",
     ylab="waiting time (minutes)")
plot(pressure, type="l", col="red", main="Second:Temperature vs. ")
plot(LakeHuron, col="green", lwd=2, main="Third:Lake Huron Level")
plot(ToothGrowth$supp, ToothGrowth$len, col="orange", main="Fourth:Toothe Growth of Guinea pig")
par(old.par)

layout()
matrix(c(1,1,4,2,3,4), 2, 3, byrow=T)
old.par <- par(no.readonly = T)
layout(matrix(c(1,1,4,2,3,4), 2,3,byrow=T),
       widths=c(1,1,1.5), heights=c(2,1))
layout.show(4)

plot(faithful, pch=19, col="tomato",
     main="First: Old Faithful Geyser",
     sub="Yellowstone National Park",
     xlab="Eruption time(minutes)",
     ylab="waiting time (minutes)")
plot(pressure, type="l", col="red", main="Second:Temperature vs. ")
plot(LakeHuron, col="green", lwd=2, main="Third:Lake Huron Level")
plot(ToothGrowth$supp, ToothGrowth$len, col="orange", main="Fourth:Toothe Growth of Guinea pig")

# 그래프 요소 추가

windows(width=7.0, height=5.5)
plot(faithful, 
     main="Old Faithful Geyser", 
     sub="Yellowstone National Park",
     xlab="Eruption time (minutes)",
     ylab="Waiting time to next eruption (minutes)",
     xlim=c(1, 6), ylim=c(40, 100),
     las=1, bty="l", col="maroon", pch=19,
     family="serif",
     font.main=4, font.lab=3, font.axis=2,
     cex.main=1.5, cex.lab=1.0, cex.axis=0.75,
     col.main="tomato", col.sub="orange", col.lab="firebrick", col.axis="khaki4")

## 제목과 축

# [그림 10-32]
states <- data.frame(state.x77)
attach(states)
windows(width=7.0, height=5.5)
old.par <- par(no.readonly=TRUE)
par(mar=c(5,4,4,8) + 0.2)

plot(Murder, Life.Exp, pch=20, col="tomato", ylim=c(35,75), 
     yaxt="n", col.axis="darkorchid4", cex.axis=0.75, ann=FALSE)
points(Murder, HS.Grad, pch=22, col="blue", bg="skyblue")

axis(side=2, at=seq(68, 76, 2), labels=seq(68,76, 2), 
     col.axis="red", cex.axis=0.75, las=2)
axis(side=4, at=seq(35, 70, 5), labels=seq(35, 70, 5), 
     col.axis="blue", cex.axis=0.75, las=2, tck=-0.02)

mtext(text="High School\nGraduates\n(percent)", 
      side=4, line=3, cex=0.9, las=2, col="tan4")

title(main="Murder vs. Life Expectancy vs. High School Graduates",
      xlab="Murder (rate per 100,000 population)",
      ylab="Life Expectancy (years)",
      col.main="maroon", col.lab="tan4", cex.lab=0.9)
detach(states)
par(old.par)

#범례

?legend

str(Orange)

tree1 <- subset(Orange, Tree==1)
tree2 <- subset(Orange, Tree==2)
xlim <- range(c(tree1$age, tree2$age))
ylim <- range(c(tree1$circumference, tree2$circumference))

plot(tree1$age, tree1$circumference, type="b", 
     xlim=xlim, ylim=ylim,
     pch=16, lty=1, col="red",
     main="Growth of Orange Tree",
     xlab="age(days)", ylab="Circumference(mm)")
lines(tree2$age, tree2$circumference, type="b",
      pch=15, lty=2, col="blue")

legend("topleft", inset=0.05, title="Tree ID",
       legend=c("Tree 1", "Tree 2"), lty=c(1,2), pch=c(16,15), col=c("red", "blue"))
install.packages("Hmisc")
library(Hmisc)
minor.tick(nx=3, ny=3, tick.ratio = 0.5)

rm(list = ls())
# 텍스트

?text

plot(1:5, 1:5, type="n", xaxt="n", yaxt="n", ann=F)
text(2, 2, font=1, col="red", cex=1.0,
     labels="Default text: Sans text with plain (font=1)")
text(3, 3, font=2, col="darkgreen", cex=1.2, family="nomo",
     labels="Mono text: Sans text with bold (font=2)")
text(4, 4, font=3, col="blue", cex=1.4, family="serif",
     labels="Serif text with italic (font=3)")
text(2, 4, font=2, col="blue", cex=1.4, family="HersheyScript",
     labels="HersheyScript text(srt=25)", srt=25)
mtext(text="Windows Fonts: Sans, Mono, Serif, and HersheyScript", 
      side=1, line=1, col="deeppink")

str(mtcars)
attach(mtcars)
plot(wt, mpg, pch=19, col="royalblue",
     main="Car Mileage vs. Car weight",
     xlab="Weight (1,000 lbs)", ylab="kMileage (Miles per Gallon)")
text(wt, mpg, row.names(mtcars), cex= 0.6, pos=4, col="maroon")
detach(mtcars)

# 글꼴 오류날때 실행
# install.packages("extrafont")
# library(extrafont)
# font_import(paths=NULL, recursive=TRUE, prompt=TRUE, pattern=NULL)



