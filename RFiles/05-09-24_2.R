

# Loading package
library(dplyr)

# Summary of dataset in package
summary(mtcars)
install.packages("caTools") 

# For ROC curve to evaluate model
install.packages("ROCR")     
View(mtcars)
# Loading package
library(caTools)
library(ROCR)
split <- sample.split(mtcars, SplitRatio = 0.8)
split

train_reg <- subset(mtcars, split == "TRUE")
test_reg <- subset(mtcars, split == "FALSE")

# Training model
logistic_model <- glm(vs ~ wt + disp,
                      data = train_reg,
                      family = "binomial")
logistic_model

# Summary
summary(logistic_model)