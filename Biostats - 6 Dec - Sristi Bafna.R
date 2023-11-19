# Name: Sristi Bafna
# Student ID: 1020201437
# Program: UG 23
# Date: 6-12-2022

rm(list=ls())

sd_ = 1
mean_ = 0
x_mean = 60
x_sd = 10

y_ = function(xi, mean_, sd_){
  e = 2.718
  yi = (1/(sqrt(2*pi)))*e^-((xi-mean_)^2/(2*sd_^2))
  return(yi)
}


set.seed(1098) 
x__ = rnorm(n = 100, mean = x_mean, sd = x_sd)
y__ = sapply(X = x__, FUN = y_, mean_ = x_mean, sd_ = x_sd)

head(x__)
head(y__)

#-----------

# plot with point type 
plot(x=x__, y = y__, type = 'p', col = 'red')

# plot with line type
plot(x=x__, y = y__, type = 'l', col = 'red')

# plot with line type with order
plot(x= x__[order(x__)], y= y__[order(x__)], type = 'l', col = 'grey50')

points( x = x__, y = y__ , col = 'red', pch = 19) #PCH = point character

plot(x= x__[order(x__)], y= y__[order(x__)], type = 'b', col = 'skyblue', lwd = 2)
points( x = x__, y = y__ , col = 'red')


# z score
z_x = (x__ - x_mean)/x_sd
plot(x = z_x, y = y__)

#Exercise 07a

# What proportion of the population of bone lengths is larger than 66 mm?
xi = 66
x_mean = 60 
x_sd = 10 
x_z = (xi - x_mean)/x_sd
prop_gr_xi_66 = pnorm(x_z, lower.tail = FALSE)
x_z
prop_gr_xi_66

#percentage
round(prop_gr_xi_66*100,2)

#Exercise 07a.1

#What proportion of the population of bone lengths is larger than 77.5 mm?
xi = 77.5
x_mean = 60 
x_sd = 10 
x_z = (xi - x_mean)/x_sd
prop_gr_xi_77.5 = pnorm(x_z, lower.tail = FALSE)
x_z
prop_gr_xi_77.5

#percentage
round(prop_gr_xi_77.5*100,2)

#What population is below 66 mm?
xi = 66
x_mean = 60 
x_sd = 10 
x_z = (xi - x_mean)/x_sd
prop_gr_xi_66 = pnorm(x_z, lower.tail = TRUE)
x_z
prop_gr_xi_66

#percentage
round(prop_gr_xi_66*100,2)

#Exercise 07a.2

#If there are 2000 bone lengths in this population 
#How many of them are greater 66 
n_bl = 2000
round(prop_gr_xi_66*n_bl,0)

#Exercise 07a.3

xi = 77.5
x_mean = 60 
x_sd = 10 
x_z = (xi - x_mean)/x_sd
prop_gr_xi_77.5 = pnorm(x_z, lower.tail = FALSE)
x_z
prop_gr_xi_77.5

#percentage
round(prop_gr_xi_77.5*100,2)


# Example 07b

x_ab = c(2.0,1.1,4.4,-3.1,-1.3,3.9,
         3.2,-1.6,3.5,1.2,2.5,2.3,
         1.9,1.8,2.9,-0.3,-2.4)
x_ab_mean = mean(x_ab)
x_ab_sd = sd(x_ab)
x_ab_var = var(x_ab)
x_std_err = sqrt(x_ab_var/length(x_ab))

x_z = (x_ab_mean - 0)/x_std_err
p_z = pnorm(x_z,lower.tail = FALSE)
p_z + p_z


t.test(x = x_ab)
#performs the test 


# two sample test
xy_test = t.test(x = 1:10, y = c(7:20))
xy_test$p.value

xy_not_norm = t.test(x = 1:10, y = c(7:20,200)) #adding 200 to the vector
xy_not_norm$p.value

xy_np = wilcox.test(x=1:10,y = c(7:20,200))
xy_np$p.value



npk_aov = aov(yield ~ block, npk)

