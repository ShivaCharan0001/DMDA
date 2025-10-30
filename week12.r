#chi-square test
observed <- c(50, 30, 20)
expected <- c(40, 40, 20)
result <- chisq.test(observed, p = expected/sum(expected))
print(result)
barplot(rbind(observed, expected), beside = TRUE, col = c("skyblue", "orange"),
        names.arg = c("A", "B", "C"), legend.text = c("Observed", "Expected"),
        main = "Chi-Square Test: Observed vs Expected")

#t-test
x <- c(12, 15, 14, 10, 13, 14, 16)
y <- c(11, 13, 12, 8, 10, 13, 11)
result <- t.test(x, y)
print(result)
boxplot(x, y, names=c("Group X", "Group Y"), col=c("lightblue","lightgreen"),
        main="T-Test Comparison")

#f-test
x <- c(12, 15, 14, 10, 13, 14, 16)
y <- c(11, 13, 12, 8, 10, 13, 11)
result <- var.test(x, y)
print(result)
boxplot(x, y, names=c("Group X", "Group Y"), col=c("pink","lightyellow"),
        main="F-Test for Equality of Variances")
