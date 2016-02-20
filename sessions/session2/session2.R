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

## Inspect

stock.price
class(stock.price)

str(yelp.data)



## Add / Remove

## Index / Subset

## Filter

