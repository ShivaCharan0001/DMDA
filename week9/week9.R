#Linear Regression
x<-c(1,2,3,4,5)
y<-c(1.2,1.8,2.6,3.2,3.8)
result<-lm(y~x)
print(summary(result))
png(file="LinearRegressiongraph.png")
plot(x,y,col="red",main="Weekly Sales Report",abline(lm(y~x)),cex=1.3,pch=16,xlab="Weeks",ylab="Sales")
dev.off()

#Multiple Regression
input<-mtcars[,c("mpg","wt","disp","hp")]
result<-lm(mpg~wt+disp*hp,data=input)
print(summary(result))
png(file="MultiLinearRegressiongraph.png")
plot(result)
dev.off()

#Logistic Regression

#Poisson Regression
input<-warpbreaks
print(head(input))
plot(input)
output<-glm(formula=breaks~wool+tension,data=warpbreaks,family="poisson")
print(summary(output))
plot(output)