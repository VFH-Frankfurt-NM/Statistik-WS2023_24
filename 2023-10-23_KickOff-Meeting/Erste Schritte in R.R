# Erste Schritte in R
# Ein R-Skript.
# KickOff-Meeting vom 24.10.2023
# -------------------------------------------------------------------------
# Zeilen die mir einem "#" beginnen sind Kommentarzeilen und werden bei der 
# Ausführung nicht berücksichtigt.

# R als Taschenrechner
1 + 2 - 3 / 4 * 5

# Die ersten 200 Zahlen ausgeben lassen, beginnend mit der zwei.
2:202

# Zwei Variablen zuweisen:
x <- 2023 # Name der Variale ist x und der Wert 2023 wir ihr zugewiesen!
y <- 2024

# Eine Variable mit dem Namen "vec" der ein Vektor zugewiesen wird.
# Der Befehl "c(...)" stammt für 'combine' und kombiniert quasi die
# einzelnen Werte zu einem Vector.
vec <- c(x, y, "Test")

# Den Vektor ausgeben:
vec

# 1, ..., 3 normale Sprache in R geht mit 1:3
# Die Zahlen von 1 bis 10 (=1,2,3,...,10) erhanten wir mit:
1:10

# Wir laden das Paket "mosaic" nach!
# ggf. vorher ausführen:
# > install.packages("mosaic")
# Mit diesem Befehl haben sie dann ihr Buch(=Paket) aus dem Buchladen(=CRAN),
# in ihre Handbibliothek(=Speicher auf dem Rechner/posit.cloud) geladen
# und können es danach aus dieser auf den Schreibtisch(=Rechnerumgebung) laden
# mit Hilfe von:
library(mosaic)

# Lädt eine "verstreckte" Datentabelle nach:
data(iris)

# Zeigt die Daten der Tabelle in einem eigenen Fenster an:
View(iris)

# Ruft (eventuelle vorhandene) Hilfeseiten zur Datentabelle "iris" auf:
?iris

# Jetzt etwas Arbeit. Wir wollen uns die Kelchblattlänge (in cm) etwas 
# genauer ansehen. Dazu wollen wir die Kennzahl *Mittelwert* dieser Variabel
# betrachten.
# Es gibt zwei Möglichkeiten den Mittelwert des Merkmals "Sepal.Length" 
# anzeigen zu lassen:
mean( ~ Sepal.Length, data = iris)
mean(Sepal.Length ~ 1, data = iris)

# Wenn wir die Mittelwerte für jede der drei Arten(=Species) einzeln betrachten
# wollen, so können wir die Mittelwerte von "Sepal.Length" für jede "Species" 
# einzeln ausgeben lassen mit:
mean(Sepal.Length ~ Species, data = iris)

# Die "favorated statistics" von "Sepal.Length":
favstats( ~ Sepal.Length, data = iris)

# Die "favorated statistics" von "Sepal.Length" für jede "Species" einzeln:
favstats( Sepal.Length ~ Species, data = iris)

# Wenn wir sehen wollen ob die Blüttenblattlänge(=Sepal.Length) etwas mit
# der Kelchblattbreite(=Petal.Width) zu tun hat und schauen uns dafür das
# Streudiagramm "Sepal.Width" auf "Petal.Width" mit eingefärbten "Species" an:
gf_point(Sepal.Length ~ Petal.Width, color = ~ Species, data = iris)

# Eine etwas erweiterte Ausgabe, damit sie einmal sehen, was noch so machbar ist.
gf_point(Sepal.Length ~ Petal.Width, color = ~ Species, data = iris) %>%
  gf_labs( # Wir wollen ein paar Dinge hinzufühgen zur Ausgabe
    title = "Schwertlilien (engl. Iris) im Vergleich",
    subtitle = "Verschiedenfarbige (Iris versicolor), Borsten- (Iris setosa) \nund Verginische Schwertlinien (Iris verginica)",
    x = "Kelchblattbreite (in cm)",
    y = "Blüttenblattlength (in cm)"
  )
