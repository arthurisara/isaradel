install.packages("shiny")

# Charger le package Shiny
library(shiny)

# Définir l'interface utilisateur (UI)
ui <- fluidPage(
  # Titre de l'application
  titlePanel("Calcul du Carré"),
  
  # Entrée : Boîte de texte pour saisir un nombre
  sidebarLayout(
    sidebarPanel(
      textInput("number", "Entrez un nombre :", value = "5"),
      actionButton("calculate", "Calculer")
    ),
    mainPanel(
      # Résultat : Affiche le carré du nombre
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
      # Calculer le carré du nombre
      result <- input_number^2
      
      # Afficher le résultat dans l'output "result"
      output$result <- renderPrint({
        paste("Le carré de", input_number, "est", result)
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
shinyApp(ui, server)
