# 4. Loops, conditions and booleans
num <- c(1, 2, 3, 4, 5)
num[1]^2
num[2]^2
num[3]^2
num[4]^2
num[5]^2

# loop
for (variable in vector) {
    # code that will run
}

for (number in num) {
    print(number)
}

# sum of numbers using 
sum <- 0
for(number in num){

    result <- sum + number
    
    sum <- result
    
}
print(sum)


sum <- 0
for(number in num){
    sum <- sum + number
}
print(sum)

# mean
sum <- 0
for(number in num){
    sum <- sum + number
}
print(sum)
n <- length(num)
mean_value <- sum / n
print(mean_value)
mean(num)
# sd

var_value <- sum((num - mean(num))^2)/(n-1)
sqrt(var_value)                                     
sd(num)
var(num)

sum_of_sq <- 0
for(number in num){
    mean_num <- mean(num)
    sq_num <- (number - mean_num)^2
    sum_of_sq <- sum_of_sq + sq_num
}
sum_of_sq/(n-1)


# stoping in loop
num_vector2 <- 1:20
num_vector3 <- seq(1, 50, 0.5)
num_vector4 <- seq(1, 50, length.out = 20)
for(num in num_vector2){
    print(num)
    if(num == 10){
        # stop("Stop Loop")
        break()
    }
    print("ok")
}

for(num in num_vector2){
    if(num %% 2 == 0){
        print(num)
        print("Even")
    }
}

for(num in num_vector2){
    if(num %% 2 == 0){
        next()
    }
    print(num)
}


for(num in num_vector2){
    print("before")
    if(num %% 2 == 0){
        next()
    }
    print(num)
    
    print("after")
}

data(mtcars)

sum(mtcars$mpg)

# getting sum using loop
# mtcars["row index" ,"column index or name"]
mtcars[, "mpg"]
colnames(mtcars)

# column operation in dataframe
for(column in colnames(mtcars)){
    data_column <- mtcars[, column]
    print(column)
    print(sum(data_column))
}

# loop over dataframe row
row_numbers <- 1:nrow(mtcars)
mtcars[ 2, ]
mtcars[ c(5, 7, 8), ]

for(row_index in row_numbers){
    row_var <- mtcars[row_index, ]
    row_sum <- sum(row_var)
    print(row_sum)
}

colSums(mtcars)
rowSums(mtcars)

sum(mtcars)

num4 <- c(1, 2, 3)
num5 <- c(num4, 9)
num5
col_sum <- numeric()
# column operation in dataframe
for(column in colnames(mtcars)){
    data_column <- mtcars[, column]
    current_sum <- sum(data_column)
    col_sum <- c(col_sum, current_sum)
    print("-------------")
    print(col_sum)
}

print(col_sum)
total_sum <- sum(col_sum)
print(total_sum)
sum(mtcars)

cols <- colnames(mtcars)
cols[1]
cols[2]
1:length(cols)

col_sum2 <- numeric()
for(index in   1:length(cols)){
   col_df <- mtcars[, index]
   col_sum2[index] <- sum(col_df)
}
col_sum2

# while 
while (condition) {
    # code
}

num5 <- seq(1, 200, 1)
sum <- 0
i <- 1
while (sum <= 300) {
    print("---------")
    print(i)
    print(num5[i])
    print(sum)
    sum <- sum + num5[i]
    i <- i + 1
}
print(i)
print(sum)

i <- 1

ncol(mtcars)
while(i <= ncol(mtcars)){
    # col_sum <- sum(mtcars[, i])
    print(i)
    # print(col_sum)
     i <- i + 1
}


result <- ""
if(runif(1) > 0.5){
    result <- "Head"
}else{
    result <- "Tail"
}
print(result)

n_heads <- 0
while (n_heads < 3) {
    if(runif(1) > 0.5){
        print("Head")
        n_heads <- n_heads + 1
    }else{
        print("Tail")
    }
}

print(n_heads)


# conditions in R
date_today <- 28
if (date_today == 28){
    print("Yes, Today is 28")
}
if (date_today == 20){
    print("Yes, Today is 28")
}
if (date_today > 20){
    print("Yes, Today is 28")
}
if (date_today < 20){
    print("Yes, Today is 28")
}
# < , > , <=, >=, == , !=

if(condition){
    # true this will run
}else{
    # false this will run
}

if (date_today < 20){
    print("No, Today is less than 20")
}else{
    print("Today is greater than 20")
}


