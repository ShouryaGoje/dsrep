library(neuralnet)
library(caTools)

data <- read.csv("E:/JNEC/BE/Sem1/DS/RFiles/concrete.csv")


normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
data_norm <- as.data.frame(lapply(data, normalize))


split <- sample.split(data_norm$csMPa, SplitRatio = 0.7)
train_data <- subset(data_norm, split == TRUE)
test_data <- subset(data_norm, split == FALSE)


formula <- csMPa ~ cement + slag + flyash + water + superplasticizer + coarseaggregate + fineaggregate


nn <- neuralnet(formula, data = train_data, linear.output = TRUE)


plot(nn)


predicted_strength <- compute(nn, test_data[, 1:8])
predictions <- predicted_strength$net.result


mse <- mean((test_data$csMPa - predictions)^2)
print(paste("Mean Squared Error:", mse))


predicted_strength <- compute(nn, test_data[, 1:8])
predictions <- predicted_strength$net.result

correlation <- cor(test_data$csMPa, predictions)
print(paste("Correlation between actual and predicted values:", correlation))
