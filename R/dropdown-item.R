#' Create a Calcite dropdown Item Component
#'
#' Creates an individual dropdown item that can be used within a calcite-dropdown.
#' dropdown items can be expanded and collapsed to show or hide content.
#'
#' @param ... Child content for the dropdown item (default slot)
#' @param id Component ID (required for Shiny reactivity)
#' @param label label text for the dropdown item
#' @param description Description text displayed in the header
#' @param expanded Whether the item is currently expanded (default: FALSE)
#' @param icon_start Icon to display at the start of the header
#' @param icon_end Icon to display at the end of the header
#' @param icon_flip_rtl Flip icons in RTL languages: "start", "end", or "both"
#' @param actions_start Content for the actions-start slot
#' @param actions_end Content for the actions-end slot
#' @param content_start Content for the content-start slot
#' @param content_end Content for the content-end slot
#'
#' @details
#' ## Shiny Integration
#'
#' The dropdown item emits events when it's expanded or collapsed.
#'
#' **Available properties in `input$id`:**
#' - `$expanded` - Whether the item is currently expanded
#' - `$label` - The label text
#' - `$description` - The description text
#' - Other component properties
#'
#' **Basic usage:**
#' ```r
#' calcite_dropdown_item(
#'   id = "item1",
#'   label = "Watercraft",
#'   description = "Yachts, boats, and dinghies",
#'   icon_start = "embark",
#'   # Item content...
#' )
#'
#' # In server
#' observeEvent(input$item1$expanded, {
#'   if (input$item1$expanded) {
#'     message("Item was expanded")
#'   } else {
#'     message("Item was collapsed")
#'   }
#' })
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown-item/)
#' @examples
#' # Basic dropdown item
#' calcite_dropdown_item(
#'   id = 'watercraft',
#'   label = 'Watercraft',
#'   description = 'Yachts, boats, and dinghies',
#'   icon_start = 'embark',
#'   'Content goes here...'
#' )
calcite_dropdown_item <- function(
  ...,
  id = NULL,
  disabled = FALSE,
  href = NULL,
  icon_start = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  label = NULL,
  rel = NULL,
  selected = FALSE,
  target = NULL
) {
  # Validate icon_flip_rtl if provided
  if (!is.null(icon_flip_rtl)) {
    icon_flip_rtl <- rlang::arg_match(icon_flip_rtl, c('start', 'end', 'both'))
  }

  # Build attributes dropdown
  attribs <- compact(list(
    id = id,
    disabled = disabled,
    href = href,
    `icon-start` = icon_start,
    `icon-end` = icon_end,
    `icon-flip-rtl` = icon_flip_rtl,
    label = label,
    rel = rel,
    selected = selected,
    target = target
  ))

  # Combine with dots (child content)
  attribs_extra <- rlang::dots_list(...)
  attribs <- c(
    attribs,
    attribs_extra[!names(attribs_extra) %in% names(attribs)]
  )

  attribs <- clean_attribs(attribs)

  # Custom binding for dropdown-item
  dropdown_item_binding <- htmltools::htmlDependency(
    name = 'calcite-dropdown-item-binding',
    version = calcite_version(),
    src = c(file = system.file('www', package = 'calcite')),
    script = 'calcite-dropdown-item.js'
  )

  res <- htmltools::tag(
    'calcite-dropdown-item',
    c(
      attribs,
      list(calcite_dependency(), dropdown_item_binding)
    )
  )

  class(res) <- c('calcite_component', class(res))
  res
}
