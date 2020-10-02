## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)


## -----------------------------------------------------------------------------
library(readxl)


## -----------------------------------------------------------------------------
# .xsl read_xls()
# .xlsx read_xlsx()
# read_excel()
death <- read_xls("deaths.xls", sheet = "arts")
death2 <- read_xls("deaths.xls", sheet = "arts",
                   skip = 4)
death2 <- death2[1:10, ]
death3 <- read_xls("deaths.xls", sheet = "arts",
                   range = "A5:F15")
head(death3)


death4 <- read_excel("deaths.xls", sheet = "arts")
death5 <- read_excel("deaths.xls", sheet = "arts",
                   skip = 4)
death6 <- death2[1:10, ]
death7 <- read_excel("deaths.xls", sheet = "arts",
                   range = "A5:F15")
head(death7)
death8 <- read_excel("/Users/mdranamahmud/Documents/GitHub/r-programming-bangla-basic/deaths.xls", sheet = "arts",
                   range = "A5:F15")
head(death8)



## -----------------------------------------------------------------------------
logit_data <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")

# download.file("https://stats.idre.ucla.edu/stat/data/binary.csv","binary.csv")

head(logit_data)


## -----------------------------------------------------------------------------
summary(logit_data)

# fit model

fit_logit <- glm(admit ~ gre + gpa + rank, data = logit_data, family = "binomial")

summary(fit_logit)

table(logit_data$rank)

# categorical varaible convert to categorical 
logit_data$rank <- as.factor(logit_data$rank)
class(logit_data$rank)
unique(logit_data$admit)

levels(logit_data$rank)
fit_logit2 <- glm(admit ~ gre + gpa + rank, data = logit_data, family = "binomial")

summary(fit_logit2)


## -----------------------------------------------------------------------------
# confidence interval
confint(fit_logit2)
confint(fit_logit2, level = 0.90)

# model coefficient
coef(fit_logit2)
vcov(fit_logit2)
# overall effect or rank
library(aod)
wald.test(b = coef(fit_logit2), Sigma = vcov(fit_logit2), Terms = c(4,5,6))


## -----------------------------------------------------------------------------
# odds ratio
exp(coef(fit_logit2))

# chance of getting admission increas by a factor of 2.23 for every unit increase of gpa

# predict

predicted_value <- predict(fit_logit2, type="response")

library(caret)
predict_cat <- ifelse(predicted_value>0.5, 1, 0)

table(predict_cat)
table(logit_data$admit)

table(as.factor(predict_cat), as.factor(logit_data$admit))
confusionMatrix(as.factor(predict_cat), as.factor(logit_data$admit))


## -----------------------------------------------------------------------------
data("PlantGrowth")
table(PlantGrowth$group)

levels(PlantGrowth$group)

boxplot(weight ~ group, data = PlantGrowth)
# one way anova
# aov()
one_anova <- aov(weight ~ group, data = PlantGrowth)
summary(one_anova)

# post hoc analysis
TukeyHSD(one_anova)

# homogeneity of varaiance

# residuals versus fit plot

plot(one_anova, 1)

# levenestest for homogeneity test
library(car)
leveneTest(weight ~ group, data = PlantGrowth)


## -----------------------------------------------------------------------------
# normality
plot(one_anova, 2)

shapiro.test(residuals(one_anova))


## -----------------------------------------------------------------------------
kruskal.test(weight ~ group,data = PlantGrowth)

