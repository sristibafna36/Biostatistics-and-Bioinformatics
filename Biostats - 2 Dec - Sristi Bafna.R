# Name: Sristi Bafna
# Student ID: 1020201437
# Program: UG 23
# Date: 2-12-2022

rm(list=ls())

# example 1
# normal distribution
set.seed(193)
x_ <- rnorm(n = 100, mean = 70, sd = 10)
#1 row ; 2 columns
par(mfrow = c(1,2))
x_hist <- hist(x_, col = 'skyblue', main = 'figure 1')
x_hist <- hist(x_, col = 'orange', main = 'figure 2')

#1 row ; 1 column
par(mfrow = c(1,1))
x_hist <- hist(x_, col = 'darkorchid4',main = 'Distribution Histogram')

str(x_hist) #information about each variable
#list format to store variable length outputs
x_hist$breaks
x_hist$counts
x_hist$density
x_hist$mids
x_hist$xname
x_hist$equidist

sapply(x_hist, length) #get lengths of all outputs

x_prop <- x_hist$counts/sum(x_hist$counts)
x_density <- x_prop / diff(x_hist$breaks)

#x_hist$density
norm_den <- x_density * diff(x_hist$breaks)
sum(norm_den)

#-----
d_ <- density(x_)
plot(density(x_),lwd = 2, col = 'blue', main = 'Density Plot')

#area x > 80
idx <- which (d_$x > 80)
polygon(x = c(d_$x[idx[1]], d_$x[idx]),
        y = c(0, d_$y[idx]),
        col = 'grey70', border = 'blue')

#-----
png('figures/lecture-06-frequency-density.png',
#    width = 80, height = 50, res = 120
    )
par(mfrow = c(1,2))
hist(x_, main = 'historgram')
plot(density(x_),
     lwd = 2, col = 'blue', main = 'density')

#----
#example 2
score <- 2:12
ways <- c(1,2,3,4,5,6,5,4,3,2,1)
game <- rep(score, ways)

outcome <- numeric(10000)
for (i in 1:10000) outcome [i] <- sample(game, 1)
par(mfrow = c(1,1))
hist(outcome, breaks = (1.5:12.5))

#mean
mean.score <- numeric(10000)
for (i in 1:10000) mean.score[i] <- mean(sample(game, 3))
hist(mean.score, breaks = (1.5:12.5))

mean(mean.score)
sd(mean.score)

xv <- seq(2,12,0.1)
yv <- 10000*dnorm(
  x = xv, mean = mean(mean.score),
  sd = sd(mean.score)
)

hist(mean.score, breaks = (1.5:12.5), ylim = c(0,3000),
     col = 'darkolivegreen', main = '')
lines(xv, yv, col = 'red')

#----
par(mfrow = c(1,1))

#----
standard.deviations <- seq(-3,3,0.01)
pd <- dnorm(standard.deviations)
plot(standard.deviations, pd, type = 'l', col = 'blue')

#What is the area beneath the curve to the left pf -2?
pnorm(-2)

0.02275013 * 100
#2.27% data

#----
#Q-Q Plot
par(mfrow = c(1,2))
x1 <- rnorm(n = 30, mean = 2, sd =5)
x2 <- rnorm(n = 30, mean = 10, sd =5)
hist(x1)
hist(x2)

x1 <- rnorm(n = 30, mean = 2.0, sd =5)
x2 <- rnorm(n = 30, mean = 2.75, sd =5)

par(mfrow = c(1,1))
qqnorm(standard.deviations)




