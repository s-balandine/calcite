#' Create a Calcite list Component
#'
#' @param ... One or more [calcite_list()_item()] components
#' @param id Component ID (required for Shiny reactivity)
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
  scale = NULL,
  selection_mode = NULL
) {
  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c('s', 'm', 'l'))
  }

  # Validate selection_mode if provided
  if (!is.null(selection_mode)) {
    selection_mode <- rlang::arg_match(
      selection_mode,
      c('multiple', 'none', 'single', 'single-persist')
    )
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    scale = scale,
    `selection-mode` = selection_mode
  ))

  # Combine with dots (child content)
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

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
      all_attribs,
      list(calcite_dependency(), list_binding)
    )
  )

  class(res) <- c('calcite_component', class(res))
  res
}
