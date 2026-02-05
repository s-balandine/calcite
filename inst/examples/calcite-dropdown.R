library(shiny)

ui <- calcite_shell(
  calcite_dropdown(
    id = 'test_dropdown',
    calcite_button(slot = 'trigger', kind = 'neutral', 'Group By'),
    calcite_dropdown_group(
      selection_mode = 'multiple',
      calcite_dropdown_item(id = 'activity', 'Activity'),
      calcite_dropdown_item(id = 'country', 'Country (First)'),
      calcite_dropdown_item(id = 'disease', 'Disease (First)'),
      calcite_dropdown_item(id = 'department', 'Department'),
      calcite_dropdown_item(id = 'financer', 'Financer (First)'),
      calcite_dropdown_item(id = 'responsible', 'Responsible', selected = TRUE),
      calcite_dropdown_item(id = 'hierarchy', 'Hierarchy'),
      calcite_dropdown_item(id = 'none', 'None')
    )
  ),
  tags$br(),
  tags$br(),
  verbatimTextOutput('button_state')
)

server <- function(input, output, session) {
  output$button_state <- renderPrint({
    input$test_dropdown
  })
}

shinyApp(ui, server)
