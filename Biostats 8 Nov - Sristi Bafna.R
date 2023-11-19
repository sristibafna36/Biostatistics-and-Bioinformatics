#'Name: Sristi Bafna, Ashoka ID: 1020201437
#'Affiliation: CS, UG-23, AU
#'Date: 08 Nov 2022
#'


char_var = c('sristi','bafna')
num_var = c(12,10)

mix_var <- c('6',7)
mix_2_num <- as.numeric(mix_var)

#----------
# population
pop <- c(1:15)
pop <- 1:15

#----------
# sample
set.seed(116)
sample(x = pop, size = 5, replace = FALSE)

#----------
install.packages('faraway')
library(faraway)

View(diabetes)

class(diabetes)

diabetes[1] #access first column
diabetes[1,1] # access using matrix format
diabetes$location # access particular column using column name
loc_ <- diabetes[,'location'] # access column using the column name

mor_vars <- diabetes[,c('chol','location')] # access more than one variable

colnames(diabetes) # extract column names
rownames(diabetes) # extract row names
dim(diabetes) # size of data frame
nrow(diabetes) # number of rows
ncol(diabetes) # number of columns

summary(diabetes$chol) # gives, min, max, mean, quartile
logical_var = is.na(diabetes$chol) # gives logical vectors which is the NA value in the data frame

idx_na <- which(logical_var)
chol_no_na <- diabetes$chol[-idx_na] # to remove the value

which(is.na(chol_no_na))

table(diabetes$gender)

length(diabetes$gender)

tb_gender = table(diabetes$gender)
tb_gender
barplot(tb_gender) # for count data type
hist(chol_no_na) # for continuous data type

par(mfrow=c(1,2))
barplot(tb_gender, main='barplot', col=c('skyblue','red'))
hist(chol_no_na, main='histo', col='grey')

rm(list=ls())