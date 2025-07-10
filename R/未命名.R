getSymbols("AAPL")
chartSeries(AAPL["2025::",],theme="white")
addPoints(x = 1:nrow(AAPL["2025::"]), y = AAPL["2025::", 6],col="blue")

getSymbols("AAPL")
chartSeries(AAPL["2025::",],theme="white")

# 获取子集数据
subset_data <- AAPL["2025::"]
chartSeries(subset_data, theme = "white")

# 定义事件日期
event_dates <- as.Date(c("2025-04-25", "2025-05-15"))

# 计算事件日期在子集中的相对索引
event_index <- numeric(length(event_dates))
for (i in seq_along(event_dates)) {
  event_index[i] <- which(index(subset_data) == event_dates[i])
}

# 添加标记点
addPoints(x = event_index,
          y = Ad(subset_data[event_dates]),
          col = "darkred",
          pch = 24)
