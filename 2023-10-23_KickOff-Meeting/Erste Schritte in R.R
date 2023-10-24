# Erste Schritte in R
# Ein R-Skript
# KickOff-Meeting vom 24.10.2023

# R als Taschenrechner
1+2-3/4*5

# Die ersten 200 Zahlen ausgeben lasse, beginnend mit 2
2:202

# Zwei Variablen zuweisen
x <- 2023
y <- 2024
z <- 666

# Eine Variable mit dem Namen "vec" der ein Vactor zugewiesen wird
vec <- c(x, y, "Test")
vec

# 1,...,3 normale Sprache in R geht mit 1:3
# Die Zahlen von 1 bis 10 (=1,2,3,...,10)
1:10

# Wir laden das Paket "mosaic" nach!
# ggf. vorher ausführen:
# > install.packages("mosaic")
library(mosaic)

# Läd eine "verstreckte" Datentabelle nach
data(iris)

# Zeigt die Daten der Tabelle in einem eigenen Fenster an
View(iris)

# Ruft eventuelle Hilfen zur Datentabelle "iris" auf:
?iris

# Zwei Möglichkeiten den Mittelwert des Merkmals "Sepal.Length" anzuzeigen
mean( ~ Sepal.Length, data = iris)
mean(Sepal.Length ~ 1, data = iris)


# Die Mittelwerte von "Sepal.Length" für jede "Species" einzeln:
mean(Sepal.Length ~ Species, data = iris)

# Die "favorated statistics" von "Sepal.Length":
favstats( ~ Sepal.Length, data = iris)

# Die "favorated statistics" von "Sepal.Length" für jede "Species" einzeln:
favstats( Sepal.Length ~ Species, data = iris)

# Streudiagramm "Sepal.Width" auf "Petal.Width" mit eingefärbten "Species":
gf_point(Sepal.Length ~ Petal.Width, color = ~ Species, data = iris)

# Eine etwas erweiterte Ausgabe, damit sie einmal sehen, was noch so machbar ist.
gf_point(Sepal.Length ~ Petal.Width, color = ~ Species, data = iris) %>%
  gf_labs( # Wir wollen ein paar Dinge hinzufühgen zur Ausgabe
    title = "Schwertlilien (engl. Iris) im Vergleich",
    subtitle = "Verschiedenfarbige (Iris versicolor), Borsten- (Iris setosa) \nund Verginische Schwertlinien (Iris verginica)",
    x = "Kelchblattlänge (in cm)",
    y = "Blüttenblattbreite (in cm)"
  )
