# Forest-Fire-Prediction

Forest fires are causing a serious threat to the Tropical forest perseveration. Last year Amazon rainforest noticed the largest fire in years. It is approaching its tipping point, beyond which it will become difficult to save. Hence, predicting the fires would largely help the authorities of not only the Amazon region but also the large forest reserves across the globe. 

I am using the record of last 20 years for the number of forest fires that Brazil has faced every month, using it as a time series to predict the pattern which would include details of forest fires per month for the upcoming 1 years, so that the authorities would have more time to take necessary actions to handle the same, and they would have an estimate of the vastness and frequency of the fires for every state.

The dataset seems to have an annual seasonality, with the major forest fires in Sep and Oct. These forest fires are manmade most of the times, mainly because of the loggers that are cutting and burning trees to increase land to pasture their cattle.

## Preprocessing and Feature Engineering
1. Removing independent features
2. Reordering Data so that it can be fed as a time series
3. Label encoding the feature 'month', so that it can be used in timestamp in mm format.
4. Removing null values, since it was just a fraction of the total dataset.
5. Normalizing data using MinMaxScaler, as it preserves the shape of original distribution

## Prediction Models
1. ARIMA Model
2. SVR Model
3. Holt Winter's Model

## Accuracy Measures
1. Root Mean Squared Error
2. Mean Average Error

![accuracy comparison](https://user-images.githubusercontent.com/55213734/81436749-ff428600-9137-11ea-8931-a682eb9a91ea.PNG)

For this dataset Holt Winters’ model gives the best result with the least RMSE and MAE values in comparison to the SVR and ARIMA models.
