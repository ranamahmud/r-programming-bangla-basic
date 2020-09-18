# 6. EDA & Functions

# function no return 
# function return 
# function value input as parameter
# function don't take  value input as parameter
# square f(x) = x^2,
# hello f() = print "Hello World"
# square f(x) = print(x^2)

# keyword function, (), {}, function name, return

hello <- function(){
    print("Hello Bangladesh")
    print("Hello World")
    print("Hello SUST")
}

hello()
hello_number <- function(number){
    print(paste("Hello ",number))
}

hello_number(10)

# take input don't return explicitely
add_two_number <- function(num1, num2){
    total <- num1 + num2;
    print(paste("Total: ",total))
}

add_two_number(5, 8)


# take input  return 
add_two_number_ret <- function(num1, num2){
    total <- num1 + num2;
    return(total)
}
# f(x) = sqrt()
x <- 5
sqrt_x <- sqrt(x)

two_sum <- add_two_number_ret(5, 8)
two_sum

# default value of parameter
add_two_number(5, 8)
add_two_number(5)

add_two_number_param <- function(num1, num2 = 9){
    total <- num1 + num2;
    print(paste("Total: ",total))
}
add_two_number_param(5, 7)
add_two_number_param(5)

# multiple return from function

add_two_multiple <- function(num1, num2){
    total <- num1 + num2;
    product <- num1 * num2;
    return(list(total, product))
}

ret2 <- add_two_multiple(5, 7)
ret2[[1]]
ret2[[2]]

# ordering of function parameter
order_num <- function(num, denom){
    print(paste("num: ",num))
    print(paste("denom:",denom))
    result <- num/ denom;
    return(result)
}

order_num(20, 3)
order_num(num = 20,denom =  3)
order_num(denom = 20,num =  3)
