library(forecast)


sales_data <- data.frame(
  Month = seq(as.Date("2023-01-01"), by = "months", length.out = 6),
  Sales = c(12000, 15000, 18000, 16000, 20000, 22000)
)


sales_ts <- ts(sales_data$Sales, frequency = 12)

arima_model <- auto.arima(sales_ts)


forecast_result <- forecast(arima_model, h = 3)


print(forecast_result)