#' Create a Calcite tree Component
#'
#' @param ... One or more [calcite_tree_item] components
#' @param id Component ID (required for Shiny reactivity)
#' @param drag_enabled
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large) (default: "m")
#' @param selection_mode Selection mode: "multiple" allows any number of selections, "single" allows only one selection, "single-persist" allows one selection and prevents de-selection (default: "multiple")
#'
#' @export
#'
#' @return An object of class `calcite_component`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tree/)
#'
calcite_tree <- function(
  ...,
  id = NULL,
  lines = FALSE,
  scale = 's',
  selection_mode = 'ancestors'
) {
  checkmate::assertString(id)
  checkmate::assertChoice(scale, choices = c('s', 'm', 'l'))
  checkmate::assertChoice(selection_mode, choices = c('ancestors', 'children', 'multichildren', 'multiple', 'none', 'single', 'single-persist'))
  checkmate::assertFlag(lines)

  attribs <- compact(
    list(
      id = id,
      lines = lines,
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

  # Custom binding for tree
  tree_binding <- htmltools::htmlDependency(
    name = 'calcite-tree-binding',
    version = calcite_version(),
    src = c(file = system.file('www', package = 'calcite')),
    script = 'calcite-tree.js'
  )

  res <- htmltools::tag(
    'calcite-tree',
    c(
      attribs,
      list(calcite_dependency(), tree_binding)
    )
  )

  class(res) <- c('calcite_component', class(res))
  res
}
