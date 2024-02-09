# Charger le package Shiny
library(shiny)

# Définir l'interface utilisateur (UI)
ui <- fluidPage(
  titlePanel("Calculateur Puissant"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("number", "Entrez un nombre :", value = "5"),
      sliderInput("power", "Choisissez une puissance :", min = 1, max = 10, value = 2),
      actionButton("calculate", "Calculer")
    ),
    mainPanel(
      verbatimTextOutput("result")
    )
  )
)

# Définir le serveur
server <- function(input, output) {
  observeEvent(input$calculate, {
    input_number <- as.numeric(input$number)
    
    if (!is.na(input_number)) {
      input_power <- as.numeric(input$power)
      result <- input_number^input_power
      
      output$result <- renderPrint({
        paste("Le résultat de", input_number, "élevé à la puissance", input_power, "est", result)
      })
    } else {
      output$result <- renderPrint({
        "Veuillez entrer un nombre valide."
      })
    }
  })
}

# Créer l'application Shiny
shinyApp(ui, server)

