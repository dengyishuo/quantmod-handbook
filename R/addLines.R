getSymbols("EBAY")
chartSeries(EBAY, theme = chartTheme("white"), type = "candle")
addLines(h = 50, col = 6)
