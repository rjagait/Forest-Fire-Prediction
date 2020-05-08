##Holt Winters' Model
#rm(list=ls())

#Install the required library
require(forecast)
require(xts)

#read data as timeseries
data <- read.csv("F:/Western/Fall19/Data Analytics/New folder/AmazonForestFires.csv")
data_ts <- xts(x = data$Number, order.by = as.yearmon(data$Month));

#split data into train and test and create model
train <- data_ts[0:200]
test <- data_ts[201:239]
modelHalt <- ets(train, model="AAM", damped=FALSE, restrict=FALSE)

#predict and plot the model
autoplot(forecast(modelHalt, h=39), xlab = 'Years', ylab='No. of forest fires')
data_forecast <- forecast(modelHalt, h=39)
accuracy(data_forecast, test)