#그래픽 파라미터
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

install.packages("extrafont")
library(extrafont)
font_import(paths=NULL, recursive=TRUE, prompt=TRUE, pattern=NULL)
y
