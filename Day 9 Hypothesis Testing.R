## ----setup, include=FALSE------------------------------
knitr::opts_chunk$set(echo = TRUE)


## ------------------------------------------------------
# normal test
x_bar <- 3.45
n <- 40
mu_not <- 4
sigma <- 0.16
z_statistics  <- (x_bar - mu_not)/(sigma/sqrt(n))
z_statistics
# 0.05
# 0.025
# 1- 0.025
qnorm(c(0.025, 0.975))

## ------------------------------------------------------
# critical value -1.96
2*pnorm(-abs(z_statistics))



## ------------------------------------------------------
mu_not - 1.96*(sigma/sqrt(n))
mu_not + 1.96*(sigma/sqrt(n))


## ------------------------------------------------------
x_bar <- 110
n <- 25
mu_not <- 120
s <- 12
t_statistics  <- (x_bar - mu_not)/(s/sqrt(n))
t_statistics

# from t distribution
# p value
2*pt(-abs(t_statistics),df=n-1)
# critical region
qt(c(.025, .975), df=n-1)




## ------------------------------------------------------
n1 <- 12
n2 <- 15
x1_bar <- 4.5
x2_bar <- 3.4
sigma_sq_1 <- 1
sigma_sq_2 <- 1.5

z <- (x1_bar-x2_bar)/(sqrt((sigma_sq_1/n1)+sigma_sq_2/n2))
z
# critical region
qnorm(c(0.025,0.975))


2*pnorm(-abs(z))


## ------------------------------------------------------
n1 <- 16
n2 <- 14
x1_bar <- 70.2
x2_bar <- 62.7
sigma_sq_1 <- 8.4^2
sigma_sq_2 <- 7.5^2

sp_sq <- ((n1-1)*sigma_sq_1 + (n2-1)*sigma_sq_2)/(n1+n2-2)
sp_sq


t <- (x1_bar -x2_bar)/(sqrt(sp_sq)*sqrt(1/n1+1/n2))
t
# critical region
qt(c(0.025,0.975), n1+n2-2)


pt(-abs(t),df=n1+n2-2)



## ------------------------------------------------------
sales99 <- c(126, 56, 86, 62, 96, 36, 52, 50, 35, 53)
sales20 <- c(123, 49, 79, 59, 92, 35, 48, 48, 32, 50)

d1 <- sales99 - sales20
d1
d1_sq <- d1^2
d_bar <- sum(d1)/length(sales99)
n <- length(sales99)
d_bar
s_d <- sqrt((sum(d1^2) - n * d_bar^2)/(n-1))
s_d

t <- d_bar / (s_d / sqrt(n))
t

qt(c(0.025,0.975), n-1)



## ------------------------------------------------------
t.test(sales99, sales20, paired = TRUE)
# less than
t.test(sales99, sales20, paired = TRUE, alternative = "less")
t.test(sales99, sales20, paired = TRUE, alternative = "greater")
# changing alpah value
t.test(sales99, sales20, paired = TRUE, conf.level = 0.99)
t.test(sales99, sales20, paired = TRUE, conf.level = 0.90)


## ------------------------------------------------------
shapiro.test(sleep[sleep$group == 1, "extra"])
shapiro.test(sleep[sleep$group == 2, "extra"])


## ------------------------------------------------------
data("sleep")
t.test(extra ~ group, data = sleep)
x1 <- c(1,2, 7, 9,8,7,29,23)
x2 <- c(8,6, 99,2,2,7,19,8)
df <- data.frame(x1, x2)
t.test(x1, x2)
t.test(x1, x2, data = df)


## ------------------------------------------------------
p_caret <- round(244/300,2)
p_not <- 0.75
q_not <- 1 - p_not
n <- 300
z <- (p_caret - p_not)/sqrt(p_not*q_not/n)
z

abs(qnorm(0.01))


## ------------------------------------------------------
heads <- rbinom(1, size = 100, prob = .5)
prop.test(heads, 100)          # continuity correction TRUE by default
prop.test(heads, 100, correct = FALSE)

## Data from Fleiss (1981), p. 139.
## H0: The null hypothesis is that the four populations from which
##     the patients were drawn have the same true proportion of smokers.
## A:  The alternative is that this proportion is different in at
##     least one of the populations.

smokers  <- c( 83, 90, 129, 70 )
patients <- c( 86, 93, 136, 82 )
prop.test(smokers, patients)

prop.test(244/300,p = 0.75, n = 300)



## ------------------------------------------------------
mean(sleep$extra)

t.test(sleep$extra, mu = 1.5)


## ------------------------------------------------------
data("mtcars")


## ------------------------------------------------------
chisq.test(mtcars$cyl, mtcars$am)
chisq.test(mtcars$cyl, mtcars$am)


## ------------------------------------------------------
table(mtcars$cyl, mtcars$am)


## ------------------------------------------------------
## Agresti (1990, p. 61f; 2002, p. 91) Fisher's Tea Drinker
## A British woman claimed to be able to distinguish whether milk or
##  tea was added to the cup first.  To test, she was given 8 cups of
##  tea, in four of which milk was added first.  The null hypothesis
##  is that there is no association between the true order of pouring
##  and the woman's guess, the alternative that there is a positive
##  association (that the odds ratio is greater than 1).


TeaTasting <-
matrix(c(3, 1, 1, 3),
       nrow = 2,
       dimnames = list(Guess = c("Milk", "Tea"),
                       Truth = c("Milk", "Tea")))
chisq.test(TeaTasting)
chisq.test(TeaTasting,simulate.p.value = TRUE)
fisher.test(TeaTasting, alternative = "greater")
## => p = 0.2429, association could not be established


## ------------------------------------------------------
library(dplyr)


## ------------------------------------------------------
df2 <- mtcars %>%
    # variable selection
    select(vs, am)
head(df2)
df3 <- mtcars %>%
    # variable selection
    select(-vs, -am)
head(df3)
# starts_with
df4 <- mtcars %>%
    # variable selection
    select(starts_with("d"))
head(df4)



## ------------------------------------------------------
# filter
df5 <- mtcars %>%
    filter(mpg >= 25)
df5

mtcars %>%
    filter(mpg >= 25) %>%
    select(mpg, cyl)


## ------------------------------------------------------
# summarize
mtcars %>% 
    group_by(cyl) %>% 
    summarise(avg_mpg =  mean(mpg), sd_mpg = mean(mpg))
mtcars %>% 
    group_by(cyl,am) %>% 
    summarise(avg_mpg =  mean(mpg), sd_mpg = mean(mpg))
df6 <- mtcars %>% 
    filter(mpg > 25)%>%
    group_by(cyl,am) %>% 
    summarise(avg_mpg =  mean(mpg), sd_mpg = mean(mpg))
df6


## ------------------------------------------------------
data(airquality)
subset(airquality, Temp > 80)
subset(airquality, Temp > 80, select = c(Ozone, Temp))
subset(airquality, Temp > 80, select = -Temp)
subset(airquality, Temp > 80, select = Ozone: Wind)


## ------------------------------------------------------
library(ggplot2)
# base ggplot()
# aesthetics / line type
# theme
# geom_line()
# geom_hist()
# geom_bar()
# stat_
data("diamonds")
# aes(x = , y = , color, size, alpha )
# scatterplot = geom_point
ggplot(diamonds) + geom_point( aes(depth, price))
ggplot(diamonds) + geom_point( aes(depth, price, alpha = 0.25))+ggtitle("Relationship Between Depth and Price")+xlab("Depth")+ylab("Price")

