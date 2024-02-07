### données
library(dplyr)
data("starwars")
names(starwars)
## graphiques

## graph 1

ggplot(data=starwars,
       mapping = aes (x = starwars$mass, 
                      y = starwars$height, color = "red"))
geom_point()

## graph 2 ##
  
ggplot(data=starwars,
       mapping = aes (x = starwars$mass, y = starwars$height, color = "red""))
  geom_col()+
  facet_wrap(-color)+
  labs(title = "taille en fonction du poids du personnage")
      x= "masse du perso"
      y= "height"
  theme_minimal()
  geom_point()
  
  
  
  
  
  
  
  
  