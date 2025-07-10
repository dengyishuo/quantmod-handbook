getSymbols("SPY", src = "yahoo", from = "2011-01-01", to = "2012-08-01")
chartSeries(SPY)
addVLine("months")
addVLine(index(SPY["2011-05-20::2011-05-25"]))
