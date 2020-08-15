# r packages
# install
install.packages("packageName")
install.packages("ggplot2")
library(ggplot2)
chooseCRANmirror()

devtools::install_github("hadley/babynames")

packageDescription("stats")
help(package = "stats")

# installed packages
installed.packages()

# attach mtcars data
data("mtcars")
# control + enter run selected line

# data properties
# column names
colnames(mtcars)
# number of rows
nrow(mtcars)
# dimension
dim(mtcars)
# summary statistics of numeric variables
summary(mtcars)
# single variable selection using $
summary(mtcars$mpg)
# first few rows of data
head(mtcars)
head(mtcars,10)
# last few rows of data
tail(mtcars)
tail(mtcars,10)
# attaching data frames
attach(mtcars)

# summary of attached data
summary(mpg)

# seeing data types
class(mtcars)
class(mtcars$mpg)

# basic plot
plot(mtcars$mpg, mtcars$cyl, main = "MPG BY CYL",
     xlab = "MPG",ylab="CYL")
# mean
mean(mtcars$mpg)
# median
median(mtcars$mpg)

# standard deviation
sd(mtcars$mpg)
# correlation
cor(mtcars)
