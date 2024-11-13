library(xts)
data.xts <- xts(raw$precipitationCal, ido)
plot(data.xts)
## Napi
GPMdaily <- apply.daily(data.xts, sum)
plot(GPMdaily, type="h")
