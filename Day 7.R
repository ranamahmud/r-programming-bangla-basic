# Day 7. Plotting
# base R plot
# ploty, ggplot2, highcharter
library(datasets)

# histogram
hist(mtcars$mpg)
# axis label
# title
hist(mtcars$mpg,
     main = "Distribution of MPG",
     xlab = "Milage",
     ylab = "Frequency of MPG")

# saving plots in R
# png()
# jpeg()
# pdf()

# function of image format
# image code
# dev.off()
png("mpg of cars2.png", width = 1360, height = 720)
hist(mtcars$mpg,
     main = "Distribution of MPG",
     xlab = "Milage",
     ylab = "Frequency of MPG")
dev.off()
# color
# binwidth
hist(mtcars$mpg,
     main = "Distribution of MPG",
     xlab = "Milage",
     ylab = "Frequency of MPG")
# density
hist(
        mtcars$mpg,
        freq = FALSE,
        main = "PDF of MPG",
        xlab = "Milage",
        ylab = "Frequency of MPG"
)
hist(
        mtcars$mpg,
        freq = FALSE,
        main = "PDF of MPG",
        xlab = "Milage",
        ylab = "Frequency of MPG",
        col = "lightblue"
)
hist(
        mtcars$mpg,
        breaks = 10,
        main = "PDF of MPG",
        xlab = "Milage",
        ylab = "Frequency of MPG",
        col = "lightblue"
)
hist(
        mtcars$mpg,
        breaks = 5,
        main = "PDF of MPG",
        xlab = "Milage",
        ylab = "Frequency of MPG",
        col = "lightblue"
)
hist(
        mtcars$mpg,
        breaks = seq(0, 40, 10),
        main = "PDF of MPG",
        xlab = "Milage",
        ylab = "Frequency of MPG",
        col = "lightblue"
)
# barplot
data("mtcars")
barplot(table(mtcars$am))
barplot(table(mtcars$am),
        main = "Cars by AM",
        xlab = "AM",
        ylab = "Frequency")
# value label in x axis
barplot(
        table(mtcars$am),
        main = "Cars by AM",
        names.arg = c("Manual", "Automatic"),
        xlab = "AM",
        ylab = "Frequency"
)
# horizontal bar plot horiz = TRUE
barplot(
        table(mtcars$am),
        main = "Cars by AM",
        names.arg = c("Manual", "Automatic"),
        xlab = "AM",
        ylab = "Frequency",
        horiz = TRUE
)

# stacked bar plot
gear_am <- table(mtcars$gear, mtcars$am)
barplot(gear_am)
barplot(gear_am, legend = rownames(gear_am))
barplot(
        gear_am,
        legend = rownames(gear_am),
        col = c("red", "blue", "purple"),
        names.arg = c("Manual", "Automatic")
)

am_gear <- table(mtcars$am, mtcars$gear)
barplot(am_gear)
barplot(am_gear, legend = rownames(am_gear))
barplot(
        am_gear,
        legend = c("Manual", "Automatic"),
        col = c("red", "blue"),
        names.arg = c("3 gear", "4 gear", "5 gear")
)
barplot(
        am_gear,
        legend = c("Manual", "Automatic"),
        col = c("red", "blue"),
        names.arg = c("3 gear", "4 gear", "5 gear"),
        main = "Barplot of Cars by AM and Gear",
        xlab = "Gear",
        ylab = "Frquency"
)

# dodged / grouped bar plot
barplot(
        am_gear,
        legend = c("Manual", "Automatic"),
        col = c("red", "blue"),
        names.arg = c("3 gear", "4 gear", "5 gear"),
        main = "Barplot of Cars by AM and Gear",
        xlab = "Gear",
        ylab = "Frquency",
        beside = TRUE
)

# boxplot
# single continous variable boxplot
data("USArrests")
boxplot(USArrests$Murder)
boxplot(USArrests$Rape, main = "Distribution of Rape in USA")

boxplot(mtcars$mpg)
# single continous variable grouped by categorical variable
x = y + z
boxplot(mtcars$mpg ~ mtcars$am,
        xlab = "Transmission",
        ylab = "Mileage Per Hour")

data("ToothGrowth")
boxplot(
        ToothGrowth$len ~ ToothGrowth$dose,
        xlab = "Dose",
        ylab = "Len",
        notch = TRUE,
        col = c("red", "green", "blue")
)
boxplot(
        len ~ dose,
        data = ToothGrowth,
        xlab = "Dose",
        ylab = "Len",
        notch = TRUE,
        col = c("red", "green", "blue")
)

boxplot(len ~ supp * dose, data = ToothGrowth)
boxplot(len ~ supp * dose,
        data = ToothGrowth,
        col = c("gold", "darkgreen"),
        main="Tooth Growth by Supplement and Dose")

# density plot
hist(mtcars$mpg)
# add normal curve
h <- hist(mtcars$mpg)
xfit <- seq(min(mtcars$mpg), max(mtcars$mpg),
            length = 50)
yfit <- dnorm(xfit, mean = mean(mtcars$mpg),
              sd = sd(mtcars$mpg))
yfit <- yfit *  (h$breaks[2] - h$breaks[1]) * length(mtcars$mpg)
lines(xfit, yfit, col = "red", lwd = 3)

# kernel density plot
d <- density(mtcars$mpg)
plot(d, main = "KDE of MPG")
plot(d, main = "KDE of MPG",
     col = "blue")

polygon(d, col = "red")

