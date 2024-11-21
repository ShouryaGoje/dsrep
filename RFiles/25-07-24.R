df<-data.frame(iris)
boxplot(df)
y=boxplot(df$Sepal.Width)$out

#use of which function
which(df$Sepal.Width %in% c(y))
mtext(paste("Outliers: ",paste(y,collapse= ",")))
new_iris<-df[-c(16,33,34,61),]
boxplot(new_iris$Sepal.Width)$out

#use winsorization 
install.packages('DescTools')
library(DescTools)

boxplot(df$Sepal.width)
?Winsorize
df$Sepal.Width<-Winsorize(df$Sepal.Width,probs=c(0.05,0.95),na.rm=FALSE,type=1)
boxplot(df$Sepal.Width)

summary(iris$Sepal.Width)

#IQR=Q3-Q1

Q1=quantile(iris$Sepal.Width,0.25)
print(Q1)
Q3=quantile(iris$Sepal.Width,0.75)
print(Q3)

IQR_value=Q3-Q1
IQR_value

IQR(iris$Sepal.Width)

#Define lower and Upper bound of outliers
lower_bound=Q1-1.5*IQR_value
upper_bound=Q3+1.5*IQR_value
lower_bound
upper_bound

#Identify outliers
outliers<-iris$Sepal.Width<lower_bound|iris$Sepal.Width>upper_bound
print(iris[outliers,])

