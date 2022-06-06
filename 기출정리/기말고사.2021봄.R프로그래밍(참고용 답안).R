#1
fruit = c(3,1,2,2,1,3,1,2,1,2)
fruit.factor = factor(fruit, c(1,2,3), c("apple", "banana", "orange"))
table(fruit.factor)



#2
#str(mtcars)
mtcars$mileage = ifelse(mtcars$mpg > mean(mtcars$mpg), 'high', 'low')
str(mtcars)



#3
str(beaver1)
str(beaver2)

##a
beaver1$id = 1
beaver2$id = 2

##b
beaver12 = rbind(beaver1, beaver2)
#table(beaver12$id)
library(dplyr)
beaver12 = relocate(beaver12, id)

##c
subset(beaver12, activ==1)



#4
lst = list(c(1, 2, 3), list(c("A", "B", "C"), "Z"))
lst[[2]][[1]][2] = "Beta"



#5
format(seq(as.Date('2020-06-01'), as.Date('2020-06-05'), by="day"), "%y/%m/%d(%A)")



#6
alice = readLines("http://www.gutenberg.org/files/11/11-0.txt", n=6, encoding="UTF-8")
paste(alice, collapse=" ")



#7
fun = function(from, to){
  a=paste0(from, "01")
  b=paste0(to, "01")
  format(seq(as.Date(a, format="%Y%m%d"), as.Date(b, format="%Y%m%d"), by="month"), "%Y%m")
}

fun(from="201611", to="201802")



#8
str(VADeaths)

##a
apply(VADeaths, 1, mean)

##b
apply(VADeaths, 1, sd)



#9
library(tidyr)

##a
table4a %>% gather('1999','2000', key = 'year', value = 'cases')

##b
table2 %>% spread(key = type, value = count)



#10
library(dplyr)
#str(mtcars)

mtcars %>%
  group_by(cyl) %>%
  summarise(mean = mean(mpg))



#11 > 교수님이 원하시는 형태는 포기 ㅋㅋㅋ
library(ggplot2)
lt = c("solid", "dashed", "dotted", "dotdash", "longdash", "twodash")
lty = data.frame(1:length(lt), lt)
colnames(lty) = c("cr", "lt")

ggplot(lty, aes(lt))+
  geom_hline(yintercept=lty$cr, linetype=lty$lt, color=lty$cr, size=1)+
  scale_y_continuous(breaks = NULL)+
  labs(title="Line Type (lty)", x="", y="")+
  theme(plot.title=element_text(face="bold", size=17, color="black", hjust=0.5, vjust=3),
        panel.background=element_rect(fill="white", color="black"),
        legend.position="top")


ggplot(lty, aes(y=lt))+
  geom_hline(yintercept=1, linetype= lt[1], color=1, size=1)+
  geom_hline(yintercept=2, linetype= lt[2], color=2, size=1)+
  geom_hline(yintercept=3, linetype= lt[3], color=3, size=1)+
  geom_hline(yintercept=4, linetype= lt[4], color=4, size=1)+
  geom_hline(yintercept=5, linetype= lt[5], color=5, size=1)+
  geom_hline(yintercept=6, linetype= lt[6], color=6, size=1)+
  scale_y_continuous(breaks = NULL)+
  labs(title="Line Type (lty)", y="")+
  theme(plot.title=element_text(face="bold", size=17, color="black", hjust=0.5, vjust=3),
        panel.background=element_rect(fill="white", color="black"),
        legend.position="top")
