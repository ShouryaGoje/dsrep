titanic = as.data.frame(Titanic)
str(titanic)
mean(cars$speed)
median(cars$speed)
mean(cars$dist)
median(cars$dist)
mode(cars$speed)

table(cars$speed)
which.max(table(cars$speed))


Mode= function(x){
  n = table(x)
  n[which.max(n)]
}

Mode(cars$speed)
Mode(cars$dist)

sum(cars$dist)


var(cars$speed)
var(cars$dist)

sqrt(var(cars$speed))
sd(cars$speed)

sd(cars$dist)

range(cars$speed)
range(cars$dist)


hist(cars$speed)
lines(cars$speed)


hist(cars$dist)

y = boxplot(cars$dist)
y$out


plot(density(cars$speed))
plot(density((cars$dist)))

skewness(cars$dist)

skewness(cars$speed)

kurtosis(cars$speed)
kurtosis(cars$dist)


qqnorm(cars$speed)
qqline(cars$speed)

qqnorm(cars$dist)
qqline(cars$dist)

qqnorm(log(cars$dist))
qqline(log(cars$dist))
