library(shiny)
devtools::load_all()

ui <- calcite_shell(
  # End (right) panel, closed on start. It is toggled from the server.
  calcite_shell_panel(
    id = "end-panel",
    slot = "panel-end",
    position = "end",
    width = "m",
    collapsed = TRUE,

    calcite_panel(
      heading = "Details",

      # This action opens / closes the panel
      header_actions_start = calcite_action(
        id = "toggle_panel",
        icon = "chevron-right",
        text = "Toggle panel"
      ),

      calcite_block(
        heading = "Layer effects",
        description = "Adjust blur, highlight, and more",
        collapsible = TRUE,
        icon_start = "effects",

        calcite_label(
          "Effect type",
          calcite_segmented_control(
            id = "effect_type",
            width = "full",
            calcite_segmented_control_item(value = "blur", label = "Blur"),
            calcite_segmented_control_item(
              value = "highlight",
              label = "Highlight",
              checked = TRUE
            ),
            calcite_segmented_control_item(value = "party", label = "Party mode")
          )
        ),

        calcite_label(
          "Effect intensity",
          calcite_slider(
            id = "intensity",
            value = 50,
            min = 0,
            max = 100,
            step = 5,
            label_handles = TRUE
          )
        )
      ),

      # Wrapped in `htmltools::tagList()` so the unnamed `calcite_shell_panel()`
      # argument does not get confused with its own `footer` attribute
      footer = htmltools::tagList(
        calcite_button(
          id = "close_panel",
          "Close panel",
          icon_start = "x",
          appearance = "outline",
          width = "full"
        )
      )
    )
  ),

  # Main content with the button that opens / closes the end panel
  calcite_panel(
    heading = "Content",

    calcite_button(
      id = "toggle_panel_main",
      "Toggle end panel",
      icon_start = "panel-right",
      appearance = "solid",
      kind = "brand"
    ),

    verbatimTextOutput("end_panel_state")
  )
)

server <- function(input, output, session) {
  # Whether the end panel is collapsed. Starts collapsed (`collapsed = TRUE`).
  panel_collapsed <- reactiveVal(TRUE)

  toggle_panel <- function() {
    panel_collapsed(!panel_collapsed())
    update_calcite("end-panel", collapsed = panel_collapsed())
  }

  # Action in the panel header
  observeEvent(input$toggle_panel$clicked, toggle_panel())

  # Button in the main content
  observeEvent(input$toggle_panel_main$clicks, toggle_panel())

  # Button in the panel footer: always closes the panel
  observeEvent(input$close_panel$clicks, {
    panel_collapsed(TRUE)
    update_calcite("end-panel", collapsed = TRUE)
  })

  output$end_panel_state <- renderPrint({
    list(
      collapsed = panel_collapsed(),
      panel = input$`end-panel`
    )
  })
}

shinyApp(ui, server)
