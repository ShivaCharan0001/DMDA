#Mean
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result = mean(x)
print(result)

#Applying Trim Option in Mean
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result = mean(x,trim=0.3)
print(result)

#Applying NA Option in Mean
x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
result = mean(x,na.rm=TRUE)
print(result)

#Median
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result = median(x)
print(result)

#Mode
getmode <- function(v){
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}

v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
result = getmode(v)
print(result)

v <- c("it","cse","cse","aiml","it","cse")
result = getmode(v)
print(result)