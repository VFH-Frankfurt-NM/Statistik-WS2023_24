# Statistik im Wintersemester 2023/24 (VFH Frankfurt)

Die ist das GitHub Repository für das Fach Statistik im Wintersemester 2023/24.

Die einzelnen Unterlagen sind nach Datum sortiert!

Da RStudio bzw. posit bei Projekten immer aus dem Hauptverzeichnis gestartet wird sind in den R-Skripten (und in dem quarto-Dokumenten) der jeweilige Pfad zu den Daten mit Hilfe  des Paket `here` gesetzt worden.


### Kurzinformation zum Paket `here` und seine Anwendung

In R können sie den aktuellen Pfad mittels:

```
> here::here()
```

ermitteln. Das ist das Startverzeichnis aus dem Sie heraus arbeiten. 
Wollen Sie z.B. Daten aus Datei `daten.csv` aus dem Unterverzeichnis `Daten` des Startverzeichnisses laden,
so können Sie den Pfad wie folgt konsturieren:

```
> here::here("Daten", "daten.csv")
```

Sie erhalten dann den absoluten Pfad zu der Datei `daten.csv`.

Nehmen wir an 

```
> here::here()
```

liefert die Ausgabe

```
[1] "/Volumes/norman/Projekte/GitHub/VFH-Frankfurt/WingO - Statistik - WiSe 2022-23"
```

dann erhalten Sie mit

```
> here::here("Daten", "daten.csv")
```

die Ausgabe

```
[1] "/Volumes/norman/Projekte/GitHub/VFH-Frankfurt/Statistik-WS2023_24/Daten/daten.csv"
```

für den absoluten Pfad zur Datei `daten.csv`.

Das Paket `here` wird mittels des Befehls

```
install.packages("here")
```

in R installiert und kann danach mit dem Befehl

```
library(here)
```

geladen werden. Es passt sich automatisch dem Betriebssystem an. 
Auf einem Windows-Rechner würden somit aus den "/" automatisch "\\" gemacht werden.


Ihr Dozent
Norman Markgraf
