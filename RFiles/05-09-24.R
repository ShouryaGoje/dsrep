data <- data.frame(anova)

data_long <- stack(data)

anova_result <- aov(values ~ ind, data = data_long)

summary(anova_result)


data <- data.frame(anova2)

data_long <- stack(data)

anova_result <- aov(values ~ ind, data = data_long)

summary(anova_result)