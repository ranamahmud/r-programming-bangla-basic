# 5. Random Number Distribution and Functions in R
# A+ 80>
# A 60-79
# B 40-59
# F 39<

score <- 33
grade <- ""
if(score > 80){
    grade <- "A+"    
}else if(score <= 79 && score >= 60){
    grade <- "A"
}else if(score >= 40 && score <= 59){
    grade <- "B"
}else{
    grade <- "F"
}
print(grade)

# random number functions in R
# r p q d
# r - random number
# p - probability 
# q - cumulative probability
# d density
# norm - normal, binom - binomial, pois - poisson
# letter + distribution name
# random number from normal distribution
rnorm(1)
rnorm(100)
norm_num <- rnorm(100)
mean(norm_num)
sd(norm_num)
hist(norm_num)

# sd = 5, mean = 50, 40
rnum550 <- rnorm(40, 50, 5)
rnum550
hist(rnum550)
mean(rnum550)
sd(rnum550)


rpois(100, 5)
runif(50, -10,10)

?Distributions

rb_values <- rbeta(500, 2, 5)
hist(rb_values)

bin_random <- rbinom(20, 10, 0.5)
bin_random
bin_random2 <- rbinom(20, 1, 0.5)
bin_random2
bin_random3 <- rbinom(20, 1, 0.3)
bin_random3

gam_ran <- rgamma(100, 3)
hist(gam_ran)

# dnorm
dnorm(0, 0, 1)

# mean 70
# sd 10
# 60
dnorm(60, 70, 10)
dnorm(70, 70, 10)



z_scores <- seq(-3, 3, by =.1)
hist(z_scores)
d_values <- dnorm(z_scores)

plot(d_values, type='l', main="PDF of Standard Normal Distribution", xaxt="n")
axis(1, at = which(d_values==dnorm(0)), labels = c(0))
axis(1, at = which(d_values==dnorm(1)), labels = c(-1,1))
axis(1, at = which(d_values==dnorm(2)), labels = c(-2,2))

numbers <- c(1,2,3,4,4,5,4,5,6)
hist(numbers)
numbers_mean <- mean(numbers)
numers_sd <- sd(numbers)
dnorm(4, numbers_mean, numers_sd)
# density function - certain point d
# cumulative density function 
pnorm(0)
pnorm(3)

pnorm(4, numbers_mean, numers_sd)


coin_toss <- rbinom(1000,10, 0.5)
table(coin_toss)
dnorm(4, mean(coin_toss), sd(coin_toss))
pnorm(4, mean(coin_toss), sd(coin_toss))

z_scores
p_values <- pnorm(z_scores)


plot(p_values, type='l', main="CDF of Standard Normal Distribution", xaxt="n",ylab="Probaility Density")
axis(1, at = which(p_values==pnorm(-2)), labels = round(pnorm(-2),2))
axis(1, at = which(p_values==pnorm(-1)), labels =  round(pnorm(-2),2))
axis(1, at = which(p_values==pnorm(0)), labels =  round(pnorm(0),2))
axis(1, at = which(p_values==pnorm(1)), labels =  round(pnorm(1),2))
axis(1, at = which(p_values==pnorm(2)), labels =  round(pnorm(2),2))

# qnorm inverse of pnorm
pnorm(4, mean(coin_toss), sd(coin_toss))
qnorm(0.2537211, mean(coin_toss), sd(coin_toss))

# Compute P(45 < X < 55) for X Binomial(100,0.5)
dbinom(46, 100, 0.5)
dbinom(46:54, 100, 0.5)
sum(dbinom(46:54, 100, 0.5))

pbinom(55, 100, 0.5) - pbinom(46, 100, 0.5)

# random number seed
rn1 <- rnorm(5)
rn2 <- rnorm(5)
rn1 
rn2
rn1 == rn2
set.seed(123)
rnorm(5)

plot(rnorm(100),rnorm(100))

set.seed(123)
height <- rnorm(100, 70, 5)
hist(height)

# function
mean(1:5)

2**3
1:100**3

num <- 1:100
num_cub <- num**3
cub_sum <- sum(num_cub)
print(cub_sum)
num <- 30:100
num_cub <- num**3
cub_sum <- sum(num_cub)
print(cub_sum)
num <- 1:20
num_cub <- num**3
cub_sum <- sum(num_cub)
print(cub_sum)

# 1. function name
# 2. function word
# 3. () value goes inside function
# 4. {} code
hello <- function(){
    print("Hello there")
    print("Today is Saturday")
    print("We live in bangladesh")
}
hello()
hello()
hello()

# cgpa calculator in R

# 80 => =  4.0
# 79-75 = 3.75
# 71-75 = 3.5
# 65-69 = 
# 60-64 = 3.25
# 55-59 = 3.0
# 50 - 54 = 2.75
# 45- 49 = 2.25
# 40- 44 = 2.0
# 40 < F

score <- readline()
score <- as.numeric(score)
print(score)
class(score)
if(score >= 80){
    print("A+")
} else if(score >= 75 && score <= 79){
    print("A")
}else if(score >= 70 && score <= 74){
    print("A-")
}

