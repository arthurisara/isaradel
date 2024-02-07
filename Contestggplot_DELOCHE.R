### données
library(dplyr)
data("starwars")
names(starwars)

#graphique de base 

starwars
dim(starwars)

ht <- starwars$height
ht

wt <- starwars$mass
wt

## graphiques
par(mfrow=c(5,5))

hist(x = ht)
hist(ht)

plot(ht)
plot(x=wt, y=ht)

boxplot(starwars$height~starwars$mass)

names(starwars)
par(mfrow=c(5,5))
  plot(x=starwars.weight, y= starwars.height), 
  main="poids en fonction de la taille des persos de starwars" , 
  xlab("poids en kilos")
  ylab("taille en cm")

  