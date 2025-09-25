input <- mtcars[,c("am","mpg","hp")]
print(head(input))
result1 <- aov(mpg~hp*am,data=input)
result2 <- aov(mpg~hp+am,data=input)
print(anova(result1,result2))
boxplot(anova(result1,result2))