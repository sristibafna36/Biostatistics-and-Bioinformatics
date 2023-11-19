# Name: Sristi Bafna
# Student ID: 1020201437
# Program: UG 23
# Date: 29-11-2022

rm(list=ls())

#Combination
coin = c('H','T')
times = 10 
outcomes = c()
for (i in 1:times){
  outcomes[i] = sample(x = coin, size = 1)
  
  message(i,'.outcome =',outcomes[i])
}

events = table(outcomes)
total = sum(events)
p.H = events['H']/total
p.T = events['T']/total
p.T = 1 - p.H
print(p.T)

rm(list=ls())

coin_A = c('H','T')
coin_B = c('H','T')
n_events = 10
outcome_A = c()
outcome_B = c()
set.seed(1094)
for(i in 1:n_events){
  outcome_A[i] = sample(coin_A,size = 1)
  outcome_B[i] = sample(coin_B,size = 1)
}

paste0(outcome_A,outcome_B)

comb_events = paste0(outcome_A,outcome_B)

fr_tb = table(comb_events)

p_HH = round(fr_tb['HH']/sum(fr_tb),2)
p_HT= round(fr_tb['HT']/sum(fr_tb),2)
p_TT = round(fr_tb['TT']/sum(fr_tb),2)
p_TH = round(fr_tb['TH']/sum(fr_tb),2)

rm(list=ls())

dice = c(1,2,3,4,5,6)

p_1 = c()
p_2 = c()
p_3 = c()
p_4 = c()
p_5 = c()
p_6 = c()

d_events = 500
outcomes = c()
set.seed(673)
for (i in 1:d_events){
  outcomes[i] = sample(x = dice, size = 1)
  
  
}

events = table(outcomes)
total = sum(events)
p.1 = events[1]/total
p.2 = events[2]/total
p.3 = events[3]/total
p.4 = events[4]/total
p.5 = events[5]/total
p.6 = events[6]/total

print(p.1)

p_sides = table((outcomes)/500) 

p_even = p_sides['2'] + p_sides['4'] + p_sides['6']
p_odd = p_sides['1'] + p_sides['3'] + p_sides['5']



rm(list = ls())

coin = c('H','T')
dice = c('1','2','3','4','5','6')
n_event = 500
coin_outcome = c()
dice_outcome = c()

set.seed(674)
for(i in 1:n_event){
  coin_outcome[i] = sample(coin, size = 1)
  dice_outcome[i] = sample(dice, size = 1)
  
}

comb_outcome = paste0(coin_outcome, dice_outcome)

fq_tb = table(comb_outcome)
fq_tb[c('H2','H4','H6')]

pH_ind_even = (fq_tb/n_event)[c('H2','H4','H6')]
pH_even = sum(pH_ind_even)


unfair_coin = c()
fair_coin = c()
set.seed(785)

for(i in 1:1000){
  unfair_coin[i] = sample(coin,size = 1, prob = c(0.8,0.2))
  fair_coin[i] = sample(coin,size = 1, prob = c(0.5,0.5))
}

par(mfrow=c(1,2))
barplot(table(unfair_coin), main= 'H=0.8; T=0.2 (n=1K)', 
        horiz = TRUE, 
        ylab = 'Freq',
        col = c('H' = 'red', 'T' = 'skyblue'))
barplot(table(fair_coin), main = 'H=0.5; T=0.5 (n=1K)', 
        horiz = TRUE,
        ylab = 'Freq',
        col = c('H' = 'red', 'T' = 'skyblue'))

dev.off()

