# 3. Data Types and Dataframe,matrix
# string - "Male" "Female" "Boy 1" "Boy 2" "1"
# numeric - integer, numeric
# boolean - TRUE, FALSE
# conditional operator 
# euqlity ==
# not equal !=
# >=, <= , > , <
# vector - c()
# dataframe - dataframe()
# matrix() 
# mathematicl +, - , * , / , modulus %% for remainder, **, ^ expoential, ()

15 + 7
15 - 7
15 * 7
15 / 7
15 %% 7
2^3
2**3

data("mtcars")

mtcars$mpg / mtcars$cyl

mtcars$mpg_rate <- mtcars$mpg / mtcars$cyl

# numeric
5
6
# check numeric or not
is.numeric(5)
is.numeric(5.0)
is.numeric(5.32)
is.numeric("hello")
is.numeric("1")
is.numeric("1.5")
# convert to numeric

as.numeric()
x <- as.numeric("1.5")
is.numeric(x)

is.numeric(mtcars$mpg)
'15' + '7'
15 - '7'
as.numeric('15') + as.numeric('7')
is.numeric('15')

a <- 5
b <- 7
c <- 5.70
# data type check function class()
class(a)
class(b)
class(c)
# integer in R

int_d <- as.integer(9)
class(int_d)

pi <- 3.14159
class(pi)
pi
pi_int <- as.integer(pi)
pi_int

int_e <- 50L
class(int_e)

as.integer(TRUE)
as.integer(FALSE)
# numeric vector
vector_num <- numeric(10)
vector_num[1]
vector_num[2]
vector_num[2] <- 29
vector_num
vector_int <- integer(10)
vector_int

# logical
TRUE
FALSE
#&
#|
# gender == 'male' & age > 20
# gender == 'female' & age > 20
TRUE & TRUE
TRUE | TRUE
TRUE & FALSE
TRUE | FALSE
FALSE | FALSE
FALSE & FALSE

# logical not !


gender <- "male"
age <- 25

gender == 'male' & age > 20
gender == 'male' | age > 20

gender <- "male"
age <- 18

gender == 'male' & age > 20
gender == 'male' | age > 20

# ! operator
gender == 'male' | age > 20
!(gender == 'male' | age > 20)

age

age > 20
age < 20
age == 20
age != 20

age >= 18
age <= 18

class(gender)
gender == "male"
gender == "female"

# character
''
""
gender_m <- "Male"
gender_f <- "Female"
class(gender_m)

# paste()
# paste0()

gender <- paste(gender_m, gender_f)
gender0 <- paste0(gender_m, gender_f)
gender0

mtcars$mpg_rate_text <- paste("MPG Ratio:",mtcars$mpg_rate)
text <- "This is year 2020."
nchar(text)
text
# split a string
strsplit()
strsplit(text, split = " ")
# subset a string
substr()
substr(text, 14, 17)

rate_str <- substr(mtcars$mpg_rate_text,11, 14 )
as.numeric(rate_str)
mtcars$new_rate <- as.numeric(rate_str)

# vector
c()
vec_a <- c()
length(vec_a)

gender <- c("m", "f","f","m","m")
class(gender)
length(gender)
gender[1]

age <- c(19,22, 25,20,24.5 )
age

bool_vec <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
bool_vec

min(age)
scale(age)

age2 <- c(19,22, 25,20,24.5,"hello" )
age2
class(age2)
age3 <- c(19,22, 25,20,24.5,"29.5" )
age3
class(age3)

# dataframe
person <- data.frame(age, gender)
person
person2 <- data.frame("Age" = age,"Gender" =  gender)
person2

# matrix 
matrix("elements", "number of rows","number of columns")

number <- 1:20
number

mata <- matrix(number)
mata
matb <- matrix(number, nrow = 5)
matb
matc <- matrix(number, ncol = 5)
matc
matd <- matrix(number,nrow = 4, ncol = 5)
matd
mate <- matrix(number,nrow = 4, ncol = 5, byrow = TRUE)
mate

# matrix to dataframe
df_mat <- data.frame(mate)
df_mat
# dataframe to matrix
as.matrix(person)

mate[2, 3]
# particular row
mate[2, ]
# column of matrix
mate[, 2]

# multiple column
mate[1:2, ]
mate[,1:2]
# 
list_one <- list()
list_one[[1]] <- 5
list_one
list_one[[2]] <- 6
list_one[[2]]
list_one[["age"]] <- age
list_one$age

list_person <- list(age, gender)
list_person
list_person2<- list("age"=age, "gender"=gender)
list_person2

list_person2$age
list_person2$age[5]

list1 <- list(5, TRUE,"Bangladesh")
list1

class(list1[[1]])
class(list1[[2]])
class(list1[[3]])
