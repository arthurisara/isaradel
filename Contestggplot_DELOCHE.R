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
hist(x = ht)
hist(ht)

plot(ht)
plot(x=wt, y=ht)

boxplot(starwars$height~starwars$mass)

names(starwars)
par(mfrow=c(250,150))
plot(x=starwars[,2], y= starwars[,3]), 

  main="poids en fonction de la taille des persos de starwars" , 
  xlab("poids en kilos")
  ylab("taille en cm")
