# Name: Sristi Bafna
# Student ID: 1020201437
# Programme: UG 23
# Date: 15-11-2022

hist(
  rnorm(n=1000,mean = 20, sd =2),
  main = "Frequency Dsitribution"
)

x <-  rnorm(n=100,mean = 20, sd =2) 
# x is a numeric value - where x is known as the object in R

# List, data.frame, matrix
 
# useful functions
head(x)

tail(x)


x[1:10] 
# To access the data, square brackets are used. 

xx <- c(1,16,17,10)

xx[3]

xx[-3] #To remove the value, put a = - sign 

#updates
xx <- xx[-3]

xx[c(1,3)]

#Categorical variable (nominal variable)
set.seed(101)
sex_<- sample(x=c('M','F'), replace = TRUE, size = 100)
head(sex_)
tail(sex_)

# Frequency table 
ft_sex <-(table(sex_))

#Frequency plot of Bar plot 
barplot(ft_sex)

#With annotations 
barplot(ft_sex, xlab='Gender', ylab='Frequency',
        main = 'Frequenct plot of Gender')

#Nest sites

ft_nest_site <- c(46,60,46,49)
#ft_nest_site
#[1] 46 60 46 49
names(ft_nest_site)<- c('A','B','C','D')
#A B C D
#46 60 46 49
barplot(ft_nest_site, xlab= 'Nest sites', 
        ylab= 'Frequency', 
        main= 'Freq. Distribution of Nest sites')

ft_nest_site['C']
#ft_nest_sie['c]
#C
#46

#Multiple indexing with names
ft_nest_site[c('C','A','D')]
#ft_nest_site[c('C','A','D')]
#C  A  D 
#46 46 49 

x_pigm<- rep(x= c(0,1,2,3,4),c(13,68,44,21,8))

ft_pigm<- table(x_pigm)
x_pigm
# 0  1 2  3  4 
#13 68 44 21 8

#Converting to specific order
factor(x_pigm)
#Levels: 0 1 2 3 4

x_pigm_order <- factor(
  x = x_pigm)
#Levels: 4 2 1 0 3
#Frequency Table
ft_pigm_order <- table(x_pigm_order)


#Join the two figures 
par(mfrow=c(1,2))
barplot(ft_pigm, main = 'Original', xlab = 'Class pigmentation', 
        ylab = 'Frequency')

barplot(ft_pigm_order,xlab = 'Class pigmentation',ylab = 'Frequency',
        main = 'Ordered')

#How to save statistical images
dir.create('figures', showWarnings = FALSE)
png(filename='figures/lectire-02-Freq-plot-pigmentation.png',
    width = 800,height = 600, res = 150) #Additional parameters 
barplot(ft_pigm_order,xlab = 'Class pigmentation',ylab = 'Frequency',
        main = 'Ordered')
dev.off()
dir.create('figures', showWarnings = FALSE)
png(filename='figures/lectire-02-Freq-plot-pigmentation.png')
barplot(ft_pigm_order,xlab = 'Class pigmentation',ylab = 'Frequency',
        main = 'Ordered')
dev.off()


#Homework Task
examp_3 <- c(6, 17, 40, 54, 59, 75, 
             77, 55, 32, 8, 1)
names(examp_3) <- c(
  "0-3", "4-7", "8-11", "12-15", "16-19", "20-23", "24-27", "28-31", "32-35", "36-39", "40-43")

barplot(examp_3)