## Reading data into R

## 1. CSV

stock.price <- read.csv("./data/stockprice.csv")
head(stock.price)

## 2. Reading BIG DATA into R

library(readr)

yelp.data <- read_csv("../../../RProgrammingWorkshop/sessions/w4/data/yelp_academic_dataset_review.csv")

head(yelp.data)

## 3. Reading data from Excel

library(readxl)

gpa.data <- read_excel("./data/gpa.xlsx", sheet = "Sheet1")
head(gpa.data)

####### Reading other data file types

library(haven)

sas_data <- read_sas("./data//money.sas7bdat") ## SAS
head(sas_data)

spss_data <- read_sav("./data//airline_passengers.sav") ## SPSS
head(spss_data)

stata_data <- read_dta("./data//stata_sampledata_crime.dta") ## STATA
head(stata_data)

#########################################################

## Data Structures in R

## Create

## vector

c(1, 2)

c(TRUE, FALSE)

c(1, 5.67)

c(1L, 5L)

vector.1 <- c(1, 5.67)

## list

list.1 <- list(vec.1 = rnorm(100),
     vec.2 = rpois(200, lambda = 5))

list.1 <- list(
    vec.1 = rnorm(100),
    vec.2 = rpois(200, lambda = 5)
)
list.1

## matrix

matrix(1:20)

matrix(1:20, nrow = 5)

matrix(1:20, nrow = 5, byrow = TRUE)

matrix(1:20, nrow = 5, ncol = 6)

m1 <- matrix(1:20, nrow = 5)
m1

t(m1)

## data frame

df <- data.frame(
    norm.values = rnorm(100),
    pois.value = rpois(100, lambda = 5)
)
df

df2 <- data.frame(
    norm.values = rnorm(100),
    text.values = sample(LETTERS, 100, replace = TRUE)
)
df2

df3 <- data.frame(
    nums = rnorm(100),
    alpha = sample(LETTERS, 100, replace = TRUE),
    logicals = sample(c(TRUE, FALSE), 100, replace = TRUE)
)

str(df3)

## Inspect

stock.price
class(stock.price)

str(yelp.data)

v1 <- c(1L, 5L, 7L)

v2 <- c(1, 3.14)

class(v1)
class(v2)

class(df2)
str(df2)

rn <- rnorm(100)

summary(rn)

summary (mtcars)

summary(df2)

dim(df2)

## Add / Remove

## vector add

v1

v1 <- c(v1, 6)

v1
v2

c(v1, v2)

## vector remove

v1
v1 <- v1[-3]
v1

## matrix add

m1
cbind(m1, 11:15)
rbind(m1, 11:14)

## matrix remove

m1
m1[-c(1,5),]
m1[c(2:4),] 

## dataframe

## Index / Subset

## dataframe

df2
df2[,2]
df2$text.values
df2[,"text.values"]

df3[,3]
df3$logicals

## Filter

## dataframe

table(df3[,3])

df3
df3$logicals == TRUE
df3[df3$logicals == TRUE,]
str(df3)

df3[c(1,2),]
df3[c(TRUE, rep(FALSE, 99)), ]

df3[df3$logicals == TRUE & df3$nums > 0, ]

library(dpyr)
df
df %%
    filter(logicals == TRUE, nums > 0)
