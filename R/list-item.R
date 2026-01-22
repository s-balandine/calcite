#' Create a Calcite list Item Component
#'
#' Creates an individual list item that can be used within a calcite-list.
#' list items can be expanded and collapsed to show or hide content.
#'
#' @param ... Child content for the list item (default slot)
#' @param id Component ID (required for Shiny reactivity)
#' @param label label text for the list item
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
#' The list item emits events when it's expanded or collapsed.
#'
#' **Available properties in `input$id`:**
#' - `$expanded` - Whether the item is currently expanded
#' - `$label` - The label text
#' - `$description` - The description text
#' - Other component properties
#'
#' **Basic usage:**
#' ```r
#' calcite_list_item(
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
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/list-item/)
#' @examples
#' # Basic list item
#' calcite_list_item(
#'   id = 'watercraft',
#'   label = 'Watercraft',
#'   description = 'Yachts, boats, and dinghies',
#'   icon_start = 'embark',
#'   'Content goes here...'
#' )
calcite_list_item <- function(
  ...,
  id = NULL,
  label = NULL,
  description = NULL,
  expanded = NULL,
  icon_start = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  actions_start = NULL,
  actions_end = NULL,
  content = NULL,
  content_start = NULL,
  content_end = NULL,
  content_bottom = NULL
) {
  # Validate icon_flip_rtl if provided
  if (!is.null(icon_flip_rtl)) {
    icon_flip_rtl <- rlang::arg_match(icon_flip_rtl, c('start', 'end', 'both'))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    label = label,
    description = description,
    expanded = expanded,
    `icon-start` = icon_start,
    `icon-end` = icon_end,
    `icon-flip-rtl` = icon_flip_rtl
  ))

  # Combine with dots (child content)
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  all_attribs <- clean_attribs(all_attribs)
  
  # Collect all slot content
  slot_content <- c(
    add_slot(actions_start, 'actions-start'),
    add_slot(actions_end, 'actions-end'),
    add_slot(content_start, 'content-start'),
    add_slot(content, 'content'),
    add_slot(content_end, 'content-end'),
    add_slot(content_bottom, 'content-bottom')
  )

  # Remove NULLs
  slot_content <- Filter(Negate(is.null), slot_content)

  # Custom binding for list-item
  list_item_binding <- htmltools::htmlDependency(
    name = 'calcite-list-item-binding',
    version = calcite_version(),
    src = c(file = system.file('www', package = 'calcite')),
    script = 'calcite-list-item.js'
  )

  res <- htmltools::tag(
    'calcite-list-item',
    c(
      all_attribs,
      slot_content,
      list(calcite_dependency(), list_item_binding)
    )
  )

  class(res) <- c('calcite_component', class(res))
  res
}
