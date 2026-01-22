#' Create a Calcite list Component
#'
#' @param ... One or more [calcite_list_item] components
#' @param id Component ID (required for Shiny reactivity)
#' @param drag_enabled
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large) (default: "m")
#' @param selection_mode Selection mode: "multiple" allows any number of selections, "single" allows only one selection, "single-persist" allows one selection and prevents de-selection (default: "multiple")
#'
#' @export
#'
#' @return An object of class `calcite_component`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/list/)
#'
calcite_list <- function(
  ...,
  id = NULL,
  display_mode = 'flat',
  drag_enabled = FALSE,
  scale = 's',
  selection_mode = 'multiple'
) {

  checkmate::assertString(id)
  checkmate::assertChoice(display_mode, choices = c('flat', 'nested'))
  checkmate::assertChoice(scale, choices = c('s', 'm', 'l'))
  checkmate::assertChoice(selection_mode, choices = c('multiple', 'none', 'single', 'single-persist'))

  checkmate::assertFlag(drag_enabled)

  attribs <- compact(
    list(
      id = id,
      display_mode = display_mode,
      drag_enabled = drag_enabled,
      scale = scale,
      selection_mode = selection_mode
    )
  )

  attribs_extra <- rlang::dots_list(...)
  attribs <- c(
    attribs,
    attribs_extra[!names(attribs_extra) %in% names(attribs)]
  )

  attribs <- clean_attribs(attribs)

  # Custom binding for list
  list_binding <- htmltools::htmlDependency(
    name = 'calcite-list-binding',
    version = calcite_version(),
    src = c(file = system.file('www', package = 'calcite')),
    script = 'calcite-list.js'
  )

  res <- htmltools::tag(
    'calcite-list',
    c(
      attribs,
      list(calcite_dependency(), list_binding)
    )
  )

  class(res) <- c('calcite_component', class(res))
  res
}
