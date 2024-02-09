install.packages("shiny")
# Charger le package Shiny
library(shiny)

# Définir l'interface utilisateur (IU)
iu <- fluidPage(
  # Titre de l'application
  titlePanel("Calcul avec Puissance"),
  
  # Entrée : Boîte de texte pour saisir un nombre
  sidebarLayout(
    sidebarPanel(
      textInput("number", "Entrez un nombre :", value = ""),
      sliderInput("power", "Choisissez une puissance :", min = 1, max = 10, value = 2),
      actionButton("calculate", "Calculer")
    ),
    mainPanel(
      # Résultat : Affiche le résultat du calcul
      verbatimTextOutput("result")
    )
  )
)

# Définir le serveur
server <- function(input, output) {
  # Réaction pour effectuer le calcul lorsque le bouton est cliqué
  observeEvent(input$calculate, {
    # Obtenir le nombre saisi par l'utilisateur
    input_number <- as.numeric(input$number)
    
    # Vérifier si l'entrée est un nombre valide
    if (!is.na(input_number)) {
      # Obtenir la puissance choisie par l'utilisateur
      input_power <- as.numeric(input$power)
      
      # Calculer le résultat
      result <- input_number^input_power
      
      # Afficher le résultat dans l'output "result"
      output$result <- renderPrint({
        paste("Le résultat de", input_number, "élevé à la puissance", input_power, "est", result)
      })
    } else {
      # Afficher un message d'erreur si l'entrée n'est pas valide
      output$result <- renderPrint({
        "Veuillez entrer un nombre valide."
      })
    }
  })
}

# Créer l'application Shiny
shinyApp(iu, server)
