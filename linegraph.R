
data <- c(5,412,522,651,745,785,901,1500)
boxplot(data)
df_a <-  data("iris")
boxplot(iris$Sepal.Length)
barplot(iris$Sepal.Length,col=rainbow(length(iris$Sepal.Length)))

mytable <- table(iris$Species)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls,
    main="Pie Chart of Species\n (with sample sizes)")
plot(cars$dist)
plot(cars$speed)
lines(cars$speed, col="red")
lines(cars$dist, col="green")
