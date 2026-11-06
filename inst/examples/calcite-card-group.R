library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_panel(
    label = "Tile Group Example",

    calcite_card_group(
      id = "role_selector",
      label = "Select roles",

      calcite_card(
        id = "construction_worker",
        icon = "wrench",
        label = "Construction Worker",
        span(slot = 'heading', "Hello."),
        span(slot = 'description', "This role involves managing construction projects, tracking progress, and coordinating with teams on-site.")
      )

    ),

    tags$br(),
    verbatimTextOutput("selection_output")
  )
)

server <- function(input, output, session) {
  output$selection_output <- renderPrint({
    list(
      selectedItems = input$role_selector$selectedItems,
      selectionMode = input$role_selector$selectionMode,
      selectionAppearance = input$role_selector$selectionAppearance
    )
  })

  # Log selection changes
  observeEvent(input$role_selector$selectedItems, {
    message("Selected tiles: ", paste(input$role_selector$selectedItems, collapse = ", "))
  })
}

shinyApp(ui, server)
