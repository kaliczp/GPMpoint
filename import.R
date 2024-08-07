## Beolvasás az angolszász csv-ből
raw <- read.csv("GEE_Chart_2022_06_01_90nap.csv")
## Az import áttekintése
summary(raw)
## Milyen napok?
unique(raw[,1])
## Naponta hány adat?
length(grep("Aug 25", raw[,1]))
## Félórás idő intervallum június 6 és augusztus 29 között
ido <- seq(as.POSIXct("2022-06-01 00:00:00"),as.POSIXct("2022-08-29 23:30:00"), by = "30 mins")
## Hosszak ellenőrzése
length(ido)
nrow(raw)
## Grafikus ellenőrzés
plot(ido, raw[,2], type = "h",xlab = "", ylab = "Precipitation [mm/30 mins]")
