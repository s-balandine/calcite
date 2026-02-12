#' Create a Calcite dropdown Component
#'
#' @param ... One or more [calcite_dropdown_item] components
#' @param id Component ID (required for Shiny reactivity)
#' @param drag_enabled
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large) (default: "m")
#' @param selection_mode Selection mode: "multiple" allows any number of selections, "single" allows only one selection, "single-persist" allows one selection and prevents de-selection (default: "multiple")
#'
#' @export
#'
#' @return An object of class `calcite_component`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown/)
#'
calcite_dropdown <- function(
  ...,
  id = NULL,
  close_on_select_disabled = FALSE,
  disabled = FALSE,
  max_items = 0L,
  offset_distance = 0L,
  offset_skidding = 0L,
  open = FALSE,
  overlay_positioning = 'absolute',
  placement = 'bottom-start',
  scale = 's',
  trigger = NULL,
  type = 'click',
  width = 's'
) {
  checkmate::assertString(id)

  checkmate::assertChoice(placement, choices = c('bottom', 'bottom-end', 'bottom-start', 'top', 'top-end', 'top-start'))
  checkmate::assertChoice(overlay_positioning, choices = c('absolute', 'fixed'))
  checkmate::assertChoice(scale, choices = c('s', 'm', 'l'))
  checkmate::assertChoice(type, choices = c('click', 'hover'))
  checkmate::assertChoice(width, choices = c('s', 'm', 'l'))

  checkmate::assertInt(max_items)
  checkmate::assertInt(offset_distance)
  checkmate::assertInt(offset_skidding)

  checkmate::assertFlag(close_on_select_disabled)
  checkmate::assertFlag(disabled)
  checkmate::assertFlag(open)

  attribs <- compact(
    mget(c(
      'id',
      'close_on_select_disabled',
      'disabled',
      'max_items',
      'offset_distance',
      'offset_skidding',
      'open',
      'overlay_positioning',
      'placement',
      'scale',
      'type',
      'width'
    ))
  )

  attribs_extra <- rlang::dots_list(...)
  attribs <- c(
    attribs,
    attribs_extra[!names(attribs_extra) %in% names(attribs)]
  )

  attribs <- clean_attribs(attribs)

  slot_content <- c(
    add_slot(trigger, 'trigger')
  )

  slot_content <- Filter(Negate(is.null), slot_content)

  # Custom binding for dropdown
  dropdown_binding <- htmltools::htmlDependency(
    name = 'calcite-dropdown-binding',
    version = calcite_version(),
    src = c(file = system.file('www', package = 'calcite')),
    script = 'calcite-dropdown.js'
  )

  res <- htmltools::tag(
    'calcite-dropdown',
    c(
      attribs,
      slot_content,
      list(calcite_dependency(), dropdown_binding)
    )
  )

  class(res) <- c('calcite_component', class(res))
  res
}
