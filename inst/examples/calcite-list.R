library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_list(
    id = 'transportation_list',
    selection_mode = 'multiple',
    drag_enabled = TRUE,
    calcite_list_item(
      id = 'watercraft_item',
      heading = 'Watercraft',
      description = 'Yachts, boats, and dinghies',
      icon_start = 'embark',
      expanded = TRUE,
      value = '1',
      calcite_notice(
        open = TRUE,
        div(slot = 'message', 'Recommended for coastal use')
      )
    ),
    calcite_list_item(
      id = 'automobiles_item',
      heading = 'Automobiles',
      description = 'Cars, trucks, and buses',
      icon_start = 'car',
      value = '2',
      calcite_notice(
        open = TRUE,
        div(slot = 'message', 'A good choice for inland adventure')
      )
    ),
    calcite_list_item(
      id = 'aircraft_item',
      heading = 'Aircraft',
      description = 'Planes, helicopters, and jets',
      icon_start = 'plane',
      value = '3',
      calcite_notice(
        open = TRUE,
        div(slot = 'message', 'Cross continents quickly')
      )
    )
  ),
  h3('List State'),
  verbatimTextOutput('list_output'),
  h3('Watercraft Item State'),
  verbatimTextOutput('watercraft_output'),
  h3('Automobiles Item State'),
  verbatimTextOutput('automobiles_output'),
  h3('Aircraft Item State'),
  verbatimTextOutput('aircraft_output')
)

server <- function(input, output, session) {
  output$list_output <- renderPrint({
    input$transportation_list
  })

  output$watercraft_output <- renderPrint({
    input$watercraft_item
  })

  output$automobiles_output <- renderPrint({
    input$automobiles_item
  })

  output$aircraft_output <- renderPrint({
    input$aircraft_item
  })
}

shinyApp(ui, server)
