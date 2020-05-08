#SVR Model Prediction
#rm(list=ls())

#Install required packages
require (e1071)

# read csv data from file and split into test and train
data <- read.csv("F:/Western/Fall19/Data Analytics/New folder/AmazonForestFires.csv")
train <- data[1:200, ]
test <- data[201:239, ]

# Implementing svr and predicting test values
modelSVR <- svm(Number ~ Month , data=train, type="eps-regression", kernel="radial", cost=10000, gamma=10)
predictedSVR <- predict(modelSVR, test)
plot(data, pch=16)
points(test$Month, predictedSVR, col = "blue", pch=17)

#Calculating error
rmseSVR <- sqrt(mean((test$Number - predictedSVR)^2)) #rmse ~10
rmseSVR #206

error <- test$Number-predictedSVR
mae <- function(error)
{
  mean(abs(error))
}
mae(error)