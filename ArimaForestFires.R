#ARIMA model prediction
#rm(list=ls())

#import the required packages
require(forecast)
require(xts)

#read and store the dataset as a ts()
data <- read.csv("F:/Western/Fall19/Data Analytics/New folder/AmazonForestFires.csv")
data_ts <- xts(x = data$Number, order.by = as.yearmon(data$Month));

#split the dataset into test and train
train <- data_ts[0:200]
test <- data_ts[200:39]

#make the arima model on train set and forecast for the test set
modelArima <- auto.arima(train)
fcasts<- forecast(modelArima, h=39)
plot(fcasts)

#refit the model on test set and check for accuracy
refit <- Arima(test, model=modelArima)
accuracy(refit)