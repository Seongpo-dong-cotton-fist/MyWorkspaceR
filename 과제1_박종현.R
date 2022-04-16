# 1

test.total <- c(9,4,7,9,10,
                10,5,8,7,9,
                8,3,6,9,10)
test.total.mat <- matrix(test.total,3,5,byrow=TRUE)
colnames(test.total.mat) <- c("st1","st2","st3","st4","st5")
rownames(test.total.mat) <- c("test1","test2","test3")
test.total.mat[which.min(test.total.mat[,"st1"]),"st1",drop=FALSE]
test.total.mat[which.min(test.total.mat[,"st2"]),"st2",drop=FALSE]
test.total.mat[which.min(test.total.mat[,"st3"]),"st3",drop=FALSE]
test.total.mat[which.min(test.total.mat[,"st4"]),"st4",drop=FALSE]
test.total.mat[which.min(test.total.mat[,"st5"]),"st5",drop=FALSE]

# 2
# 2(a)
days <- factor(c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"))
library(forcats)
fct_inorder(days)
fct_relevel(days, "Sun")
# 2(b)
count <- c(101,55,40,65,23,112,135)
fct_reorder(days, .x=count, .fun=mean)

# 3
c <- 1:20000
matrix(c,2000,1000)
mtx <- matrix(c,2000,1000)
mtx[999,5]
