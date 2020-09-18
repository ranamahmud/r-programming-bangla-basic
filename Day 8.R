
# scatterplot
# attach(mtcars)
plot(mtcars$mpg, mtcars$cyl,main="Relationship between MPG and Cylinder",xlab = "Milage Per Hour",
     ylab = "Cylinder")
help("plot", package = "base")

plot(mtcars$mpg, mtcars$hp,main="Relationship between MPG and Cylinder",xlab = "Milage Per Hour",
     ylab = "Cylinder", col = as.factor(mtcars$am),
     pch = 2)
plot(mtcars$mpg, mtcars$hp,main="Relationship between MPG and Horse Power",xlab = "Horse Power",
     ylab = "Cylinder", col = as.factor(mtcars$am),
     pch = mtcars$am + 1)
legend(20, 250, legend=c("Automatic","Manual"),
       col =c("red","blue"),pch=c(1,2))


col_am <- ifelse(mtcars$am == 0, "green", "red")
plot(mtcars$mpg, mtcars$hp,main="Relationship between MPG and Horse Power",xlab = "Horse Power",
     ylab = "Cylinder", col = col_am,
     pch = mtcars$am + 1)
legend(20, 250, legend=c("Manual","Automatic"),
       col =c("green","red"),pch=c(1,2))

# coloring by 3rd variable

# for 3 categorical plot
# col_am <- ifelse(mtcars$am == 0, "green", "red")
plot(mtcars$mpg, mtcars$hp,main="Relationship between MPG and Horse Power",xlab = "Horse Power",
     ylab = "Cylinder", col = as.factor(mtcars$cyl),
     pch = mtcars$cyl)
legend(25, 250, legend=c("4 type","6 type", "8 type"),
       col =c("green","red","black"),pch=c(11,7,14))

# regression line in scatterplot
fit <- lm(mpg ~ hp)
plot(mtcars$hp, mtcars$mpg)
abline(fit)
# lineplot
x <- 1:10
y1 <- x*x
y2 <- x^3
# p" for points,
# 
# "l" for lines,
# 
# "b" for both,
# 
# "c" for the lines part alone of "b",
# 
# "o" for both ‘overplotted’,
# 
# "h" for ‘histogram’ like (or ‘high-density’) vertical lines,
# 
# "s" for stair steps,
# 
# "S" for other steps, see ‘Details’ below,
# 
# "n" for no plotting.
# connected line plot with dot
plot(x, y1, type = "b")
plot(x, y1, type = "l")
plot(x, y1, type = "p")

# plotting two series in one line plot

plot(x, y1, type = "l", lty = 1,col="red",
     main = "Lineplots of Series",
     xlab= "Index",ylab="Values"
)
lines(x, y2, type = "l", lty = 2, col = "blue")
legend(6, 20, legend = c("Squares", "Cubes"),
       lty = c(1,2), col = c("red", "blue"))

plot(x, y1, type = "b", lty = 1,col="red",
     main = "Lineplots of Series",
     xlab= "Index",ylab="Values"
)
lines(x, y2, type = "b", lty = 2, col = "blue")
legend(6, 20, legend = c("Squares", "Cubes"),
       lty = c(1,2), col = c("red", "blue"))


# pie chart
pie.sales <- c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12)

pie(pie.sales)
names(pie.sales) <- c("Blueberry", "Cherry",
                      "Apple", "Boston Cream", "Other", "Vanilla Cream")
pie.sales
pie(pie.sales)
pie(pie.sales, labels = paste(names(pie.sales), pie.sales*100), main="Percentages of Fruits Sales")
pie(pie.sales, labels = paste(names(pie.sales),clocwise=FALSE, pie.sales*100), main="Percentages of Fruits Sales")

# statistical tests
# one continous variable
# one continous variable 2 groups
# one continous variable more than two groups
 
# categorical and categorical variable
# continous and continous variable

# parametric tests
# correlation test
data("mtcars")
cor(mtcars$mpg, mtcars$hp)

# 1. specify null and alternative hypothesis
# 2. alpha level 5%, 1% / p-value
# 3. determining test type
# 4. Checking assumption
# 5. Doing the test - assumptions 
# 6. interpret

# correlation between two variable
# Null Hypothesis: There is no correlationo between mpg and hp / correlation is 0
# Alternative Hypothesis: There exist correlationo between mpg and hp / correlation is not equal to 0
cor.test(mtcars$mpg, mtcars$hp)

# Comment: Since the p-value of the correlation test statistics t(30) = -6.7424, p-value = 1.788e-07 < 0.05, at 5% level of significance we reject the null hypotheiss . Hence we conclude that there exist signifcant correlation between mpg and horsepower.

# = , > , <

# direction =  alternative = c("two.sided", "less", "greater"),
# depending on x and y variable data type 
# pearson - linear relation test between two continous variable
# spearman - 1 contionus, 1 rank
# kendall - rank correlation - both variables rank
# method = c("pearson", "kendall", "spearman"),
# exact = NULL, conf.level = 0.95

x <- c(44.4, 45.9, 41.9, 53.3, 44.7, 44.1, 50.7, 45.2, 60.1)
y <- c( 2.6,  3.1,  2.5,  5.0,  3.6,  4.0,  5.2,  2.8,  3.8)

cor(x,y)
cor.test(x, y, method = "kendall")
cor.test(x, y, method = "kendall", alternative = "less")
cor.test(x, y, method = "kendall", alternative = "greater")
# alpha 0.05%, beta 
# power analyis of statistical test
# sample size calculation

# non parametrics tests
