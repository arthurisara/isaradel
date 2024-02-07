### donnéesw
library(dplyr)
data("starwars")
names(starwars)

## graphiques


## graph 2
  
ggplot(data=starwars,
       mapping = aes (x = starwars$mass, y = starwars$height, color = red))
  geom_col()+
  facet_wrap(-color)+
  labs(title = "taille en fonction du poids")
      x= "masse du perso"
      y= "Price"
      fill = "Clarity") +
  theme_minimal()
  
  
  