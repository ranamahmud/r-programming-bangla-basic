print("Hello World")
data("mtcars")
head(mtcars)
tail(mtcars)
nrow(mtcars)
ncol(mtcars)
dim(mtcars)

summary(mtcars)
# this is a comment
# $ is used to select varaible
mtcars$disp

summary(mtcars$disp)
?summary

# quantile
quantile(mtcars$mpg, 0.45)

rownames(mtcars)
# mtcars()
# plot
# xlab = xlabel
# ylab = ylabel
# main = Plot title
plot(mtcars$mpg, mtcars$cyl)
plot(mtcars$mpg, mtcars$cyl,
     xlab = "Milage",
     ylab = "Cylindar Size",
     main= "Milage vs Cylinader")
hist(mtcars$mpg)

# install via code
install.packages("ggplot2")
# loading pacakges
library(ggplot2)
# library(abcd)

setRepositories(addURLs =
                    c(CRANxtras = "https://ftp.fau.de/cran/"))


ggplot(mtcars, aes(mpg, wt))+geom_point()+
    theme_classic()
