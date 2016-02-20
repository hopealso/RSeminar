## Functions in R

##### Syntax

name.of.function <- function(params) {
    
}

## Control Structures

## 1. if loops
    
    if(TRUE) {
        print("Hello World!")
    }

## 2. if-else
    
    if(TRUE) {
        print("In this loop")
    } else {
        print("Won't come here")
    }
## 3. ifelse
    
    ifelse(5 > 6, "Not Possible", "Yep!")

## 4. for
        
    for(counter in 1:10) {
        print(counter)
    }
    
## 5. while
    
    x <- 5
    while(x > 0) {
        print(x)
        x <- x - 1
    }

##### apply

# Syntax: apply(X, MARGIN, FUN)
    
apply(mtcars, 2, mean)

apply(mtcars, 2, sd)

### Plotting

## histogram
hist(rnorm(100))
plot(density(rnorm(100)))

rn <- rnorm(100)
rp <- rpois(100, lambda = 5)
rcombined <- c(sample(rn,50), sample(rp, 50))

## density
plot(density(rn))
plot(density(rp))
plot(density(rcombined))

## scatterplot
df <- data.frame(v1 = rnorm(100), v2 = rnorm(100))
plot(df)
plot(df$v1, df$v2)

## line graph

plot(df, type = "l", 
     main = "diag title",
     xlab = "vi var",
     xlim = c(-1, 1))
