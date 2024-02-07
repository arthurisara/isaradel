# Chargement des bibliothèques
library(dplyr)
library(ggplot2)

# Chargement des données starwars
data("starwars")

# Graphique 1
ggplot(data = starwars,
       aes(x = mass, y = height, color = "red")) +
  geom_point() +
  labs(title = "Taille en fonction du poids du personnage",
       x = "Masse du personnage",
       y = "Hauteur du personnage") +
  theme_minimal()

# Graphique 2
ggplot(data = starwars,
       aes(x = mass, y = height, color = "red")) +
  geom_col() +
  labs(title = "Taille en fonction du poids du personnage",
       x = "Masse du personnage",
       y = "Hauteur du personnage") +
  theme_minimal() +
  geom_point()
  
  
  
  
  }
  
  