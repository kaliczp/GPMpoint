sum(raw[,2]) # 154.517 mm
daily.sum <- tapply(raw[,2], format.POSIXct(ido, "%Y-%m-%d"), sum)
