# Name: Sristi Bafna
# Student ID: 1020201437
# Programme: UG 23
# Date: 15-11-2022

x = c(seq(1.2, 2.4, by = 0.2))

set.seed(676)
x_samp = sample(x = x, size = length(x), replace = FALSE)

# x_samp
# 1.6 2.0 2.2 1.8 1.2 2.4 1.4

x_order = sort(x_samp, decreasing = FALSE)

# range (MAX - MIN)
range = max(x_samp) - min(x_samp)


# quartiles
n = length(x_samp)
Q1_pos = (n+1) / 4
Q3_pos = (n+1) - Q1_pos

Q1 = x_order[Q1_pos]
Q3 = x_order[Q3_pos]

# quartile deviation
IQR = Q3 - Q1
SemiIQR = IQR/2

# mean deviation
x_mean = mean(x_order)
x_diff = x_order - x_mean
x_abs_diff = abs(x_diff)
x_sum_ad = sum(x_abs_diff)
x_n = length(x_order)
x_mean_dev = x_sum_ad / x_n

# Degree of freedom 
x_DF = length(x) - 1

# sample variance
x_samp_var = (sum(x_diff^2)) / x_DF
round(x_samp_var, digits = 2)

# standard deviation 
x_sd = sqrt(x_samp_var) 

x_sq = x_order ^ 2
x_sum_sq = sum(x_sq)
x_sq_sum = sum(x_order) ^ 2

x_ss_n = x_sq_sum / length(x_order)

x_text_var = (x_sum_sq - x_ss_n) / x_DF
x_text_sd = sqrt(x_text_var)

# coefficient of variation 
x_cv = x_text_sd / x_mean
x_cv_perc = x_cv * 100


#Assignment 

x1 = c (1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8)

set.seed(676)
#x_samp = sample(x = x, size = length(x), replace = FALSE)

x1_order = sort(x1, decreasing = FALSE)

# range (MAX - MIN)
range = max(x1) - min(x1)


# quartiles
n = length(x1)
Q1_pos = (n+1) / 4
Q3_pos = (n+1) - Q1_pos

Q1 = x1_order[Q1_pos]
Q3 = x1_order[Q3_pos]

# quartile deviation
IQR = Q3 - Q1
SemiIQR = IQR/2

# mean deviation
x1_mean = mean(x1_order)
x1_diff = x1_order - x1_mean
x1_abs_diff = abs(x1_diff)
x1_sum_ad = sum(x1_abs_diff)
x1_n = length(x1_order)
x1_mean_dev = x1_sum_ad / x1_n

# Degree of freedom 
x1_DF = length(x1) - 1

# sample variance
x1_samp_var = (sum(x1_diff^2)) / x1_DF
round(x1_samp_var, digits = 2)

# standard deviation 
x1_sd = sqrt(x1_samp_var) 

x1_sq = x1_order ^ 2
x1_sum_sq = sum(x1_sq)
x1_sq_sum = sum(x1_order) ^ 2

x1_ss_n = x1_sq_sum / length(x1_order)

x1_text_var = (x1_sum_sq - x1_ss_n) / x1_DF
x1_text_sd = sqrt(x1_text_var)

# coefficient of variation 
x1_cv = x1_text_sd / x1_mean
x1_cv_perc = x1_cv * 100

x2 = c (1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8, 3.0)

set.seed(676)
#x_samp = sample(x = x, size = length(x), replace = FALSE)

x2_order = sort(x2, decreasing = FALSE)

# range (MAX - MIN)
range = max(x2) - min(x2)


# quartiles
n = length(x2)
Q1_pos = (n+1) / 4
Q3_pos = (n+1) - Q1_pos

Q1 = x2_order[Q1_pos]
Q3 = x2_order[Q3_pos]

# quartile deviation
IQR = Q3 - Q1
SemiIQR = IQR/2

# mean deviation
x2_mean = mean(x2_order)
x2_diff = x2_order - x2_mean
x2_abs_diff = abs(x2_diff)
x2_sum_ad = sum(x2_abs_diff)
x2_n = length(x2_order)
x2_mean_dev = x2_sum_ad / x2_n

# Degree of freedom 
x2_DF = length(x2) - 1

# sample variance
x2_samp_var = (sum(x2_diff^2)) / x2_DF
round(x2_samp_var, digits = 2)

# standard deviation 
x2_sd = sqrt(x2_samp_var) 

x2_sq = x2_order ^ 2
x2_sum_sq = sum(x2_sq)
x2_sq_sum = sum(x2_order) ^ 2

x2_ss_n = x2_sq_sum / length(x2_order)

x2_text_var = (x2_sum_sq - x2_ss_n) / x2_DF
x2_text_sd = sqrt(x2_text_var)

# coefficient of variation 
x2_cv = x2_text_sd / x2_mean
x2_cv_perc = x2_cv * 100
