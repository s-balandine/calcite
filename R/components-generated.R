#' Create a ActionBar component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name                    |Attribute                 |Description                                                                                                                                                                                                                                                                                                                                                 |Values              |Reflects to Attribute |
#'  |:-----------------------|:-------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |actionsEndGroupLabel    |actions-end-group-label   |Specifies an accessible name for the last `calcite-action-group`.                                                                                                                                                                                                                                                                                           |string              |FALSE                 |
#'  |expandDisabled          |expand-disabled           |When `true`, the expand-toggling behavior is disabled.                                                                                                                                                                                                                                                                                                      |boolean             |TRUE                  |
#'  |expanded                |expanded                  |When `true`, expands the component and its contents.                                                                                                                                                                                                                                                                                                        |boolean             |TRUE                  |
#'  |floating                |floating                  |When `true`, the component is in a floating state.                                                                                                                                                                                                                                                                                                          |boolean             |TRUE                  |
#'  |layout                  |layout                    |Specifies the layout direction of the actions.                                                                                                                                                                                                                                                                                                              |Check API reference |TRUE                  |
#'  |messageOverrides        |NA                        |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                         |Check API reference |FALSE                 |
#'  |overflowActionsDisabled |overflow-actions-disabled |When `true`, disables automatically overflowing `calcite-action`s that won't fit into menus.                                                                                                                                                                                                                                                                |boolean             |TRUE                  |
#'  |overlayPositioning      |overlay-positioning       |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |OverlayPositioning  |TRUE                  |
#'  |position                |position                  |Specifies the position of the component depending on the element's `dir` property.                                                                                                                                                                                                                                                                          |Check API reference |TRUE                  |
#'  |scale                   |scale                     |Specifies the size of the expand `calcite-action`.                                                                                                                                                                                                                                                                                                          |Scale               |TRUE                  |
#'  |selectionAppearance     |selection-appearance      |Specifies the selection appearance of the component                                                                                                                                                                                                                                                                                                         |Check API reference |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                           |
#'  |:------------------------|:-----------------------------------------------------|
#'  |calciteActionBarCollapse |Fires when the component's content area is collapsed. |
#'  |calciteActionBarExpand   |Fires when the component's content area is expanded.  |
#'  |calciteActionBarToggle   |Fires when the `expanded` property is toggled.        |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                                                                            |
#'  |:-----------------|:----------------------------------------------------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-action`s that will appear at the top of the component.                                      |
#'  |actions-end       |A slot for adding `calcite-action`s that will appear at the end of the component, prior to the collapse/expand button. |
#'  |expand-tooltip    |A slot to set the `calcite-tooltip` for the expand toggle.                                                             |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-bar/)
#' @examples
#' calcite_action_bar()
calcite_action_bar <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-action-bar",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ActionPad component
#'
#' in v5.0.0, removal target v6.0.0 - Use the `calcite-action-bar` component instead.
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name                 |Attribute               |Description                                                                                                                                                                                                                                                                                                                                                 |Values              |Reflects to Attribute |
#'  |:--------------------|:-----------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |actionsEndGroupLabel |actions-end-group-label |Specifies the accessible label for the last `calcite-action-group`.                                                                                                                                                                                                                                                                                         |string              |FALSE                 |
#'  |expandDisabled       |expand-disabled         |When `true`, the expand-toggling behavior is disabled.                                                                                                                                                                                                                                                                                                      |boolean             |TRUE                  |
#'  |expanded             |expanded                |When `true`, expands the component and its contents.                                                                                                                                                                                                                                                                                                        |boolean             |TRUE                  |
#'  |layout               |layout                  |Specifies the layout of the component.                                                                                                                                                                                                                                                                                                                      |Check API reference |TRUE                  |
#'  |messageOverrides     |NA                      |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                         |Check API reference |FALSE                 |
#'  |overlayPositioning   |overlay-positioning     |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |OverlayPositioning  |TRUE                  |
#'  |position             |position                |Specifies the position of the component depending on the element's `dir` property.                                                                                                                                                                                                                                                                          |Check API reference |TRUE                  |
#'  |scale                |scale                   |Specifies the size of the expand `calcite-action`.                                                                                                                                                                                                                                                                                                          |Scale               |TRUE                  |
#'  |selectionAppearance  |selection-appearance    |Specifies the selection appearance of the component                                                                                                                                                                                                                                                                                                         |Check API reference |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                           |
#'  |:------------------------|:-----------------------------------------------------|
#'  |calciteActionPadCollapse |Fires when the component's content area is collapsed. |
#'  |calciteActionPadExpand   |Fires when the component's content area is expanded.  |
#'  |calciteActionPadToggle   |Fires when the `expanded` property is toggled.        |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                |
#'  |:-----------------|:----------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-action`s to the component.      |
#'  |expand-tooltip    |A slot to set the `calcite-tooltip` for the expand toggle. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-pad/)
#' @examples
#' calcite_action_pad()
calcite_action_pad <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-action-pad",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Autocomplete component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                 |Values                  |Reflects to Attribute |
#'  |:------------------|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|:---------------------|
#'  |alignment          |alignment           |Specifies the text alignment of the component's value.                                                                                                                                                                                                                                                                                                      |Check API reference     |TRUE                  |
#'  |autocomplete       |autocomplete        |Specifies the type of content to autocomplete, for use in forms. Read the native attribute's documentation on MDN for more info.                                                                                                                                                                                                                            |AutoFill                |FALSE                 |
#'  |disabled           |disabled            |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                    |boolean                 |TRUE                  |
#'  |flipPlacements     |NA                  |Specifies the component's fallback `placement` for slotted content when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                             |Check API reference     |FALSE                 |
#'  |form               |form                |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists.                                                                                                                                                                                                            |string                  |TRUE                  |
#'  |icon               |icon                |When `true`, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon.                                                                                                                                                                                                                                       |IconName &#124; boolean |TRUE                  |
#'  |iconFlipRtl        |icon-flip-rtl       |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                                                                                                                                                                                                                                                |boolean                 |TRUE                  |
#'  |inputValue         |input-value         |Specifies the text typed into the component and is used to filter slotted `autocomplete-item`s.                                                                                                                                                                                                                                                             |string                  |FALSE                 |
#'  |label              |label               |Specifies an accessible label for the component.                                                                                                                                                                                                                                                                                                            |string                  |FALSE                 |
#'  |labelText          |label-text          |Specifies the component's label text.                                                                                                                                                                                                                                                                                                                       |string                  |FALSE                 |
#'  |loading            |loading             |When `true`, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                 |boolean                 |TRUE                  |
#'  |maxLength          |max-length          |When the component resides in a form, specifies the maximum length of text for the component's value.                                                                                                                                                                                                                                                       |number                  |TRUE                  |
#'  |messageOverrides   |NA                  |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                         |Check API reference     |FALSE                 |
#'  |minLength          |min-length          |When the component resides in a form, specifies the minimum length of text for the component's value.                                                                                                                                                                                                                                                       |number                  |TRUE                  |
#'  |name               |name                |Specifies the name of the component.  Required to pass the component's `value` on form submission.                                                                                                                                                                                                                                                          |string                  |TRUE                  |
#'  |open               |open                |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                          |boolean                 |TRUE                  |
#'  |overlayPositioning |overlay-positioning |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |OverlayPositioning      |TRUE                  |
#'  |pattern            |pattern             |When the component resides in a form, specifies a regular expression (regex) pattern the component's `value` must match for validation. Read the native attribute's documentation on MDN for more info.                                                                                                                                                     |string                  |FALSE                 |
#'  |placeholder        |placeholder         |Specifies placeholder text for the component.                                                                                                                                                                                                                                                                                                               |string                  |FALSE                 |
#'  |placement          |placement           |Determines where the component will be positioned relative to the container element.                                                                                                                                                                                                                                                                        |MenuPlacement           |TRUE                  |
#'  |prefixText         |prefix-text         |Specifies the component's prefix text.                                                                                                                                                                                                                                                                                                                      |string                  |FALSE                 |
#'  |readOnly           |read-only           |When `true`, the component's value can be read, but cannot be modified.                                                                                                                                                                                                                                                                                     |boolean                 |TRUE                  |
#'  |required           |required            |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                                                                                                                                                                                                           |boolean                 |TRUE                  |
#'  |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                        |Scale                   |TRUE                  |
#'  |status             |status              |Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                |Status                  |TRUE                  |
#'  |suffixText         |suffix-text         |Specifies the component's suffix text.                                                                                                                                                                                                                                                                                                                      |string                  |FALSE                 |
#'  |topLayerDisabled   |top-layer-disabled  |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                           |boolean                 |TRUE                  |
#'  |validationIcon     |validation-icon     |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                               |IconName &#124; boolean |TRUE                  |
#'  |validationMessage  |validation-message  |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                            |string                  |FALSE                 |
#'  |validity           |NA                  |The component's current validation state.                                                                                                                                                                                                                                                                                                                   |MutableValidityState    |FALSE                 |
#'  |value              |value               |Specifies the selected `autocomplete-item`. When the component resides in a form, the `value` is submitted with the form.                                                                                                                                                                                                                                   |string                  |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                          |Description                                                                                              |
#'  |:------------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteAutocompleteBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteAutocompleteBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteAutocompleteChange      |Fires each time a new `value` is typed and committed.                                                    |
#'  |calciteAutocompleteClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteAutocompleteOpen        |Fires when the component is open and animation is complete.                                              |
#'  |calciteAutocompleteTextChange  |Fires each time a new `inputValue` is typed and committed.                                               |
#'  |calciteAutocompleteTextInput   |Fires each time a new `inputValue` is typed.                                                             |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                           |
#'  |:-----------------|:---------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-autocomplete-item` elements.               |
#'  |content-bottom    |A slot for adding content below `calcite-autocomplete-item` elements. |
#'  |content-top       |A slot for adding content above `calcite-autocomplete-item` elements. |
#'  |label-content     |A slot for rendering content next to the component's `labelText`.     |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/autocomplete/)
#' @examples
#' calcite_autocomplete()
calcite_autocomplete <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-autocomplete",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a AutocompleteItem component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name        |Attribute     |Description                                                                                                 |Values      |Reflects to Attribute |
#'  |:-----------|:-------------|:-----------------------------------------------------------------------------------------------------------|:-----------|:---------------------|
#'  |description |description   |Specifies a description for the component. Displays below the label text.                                   |string      |FALSE                 |
#'  |disabled    |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.                    |boolean     |TRUE                  |
#'  |heading     |heading       |Specifies the component's heading text.                                                                     |string      |FALSE                 |
#'  |iconEnd     |icon-end      |Specifies an icon to display at the end of the component.                                                   |IconName    |TRUE                  |
#'  |iconFlipRtl |icon-flip-rtl |Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`). |FlipContext |TRUE                  |
#'  |iconStart   |icon-start    |Specifies an icon to display at the start of the component.                                                 |IconName    |TRUE                  |
#'  |label       |label         |Specifies an accessible label for the component.                                                            |string      |FALSE                 |
#'  |value       |value         |Specifies the component's value.                                                                            |string      |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                         |Description                            |
#'  |:-----------------------------|:--------------------------------------|
#'  |calciteAutocompleteItemSelect |Fires when the item has been selected. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot          |Description                                                                |
#'  |:-------------|:--------------------------------------------------------------------------|
#'  |content-end   |A slot for adding non-actionable elements after content of the component.  |
#'  |content-start |A slot for adding non-actionable elements before content of the component. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/autocomplete-item/)
#' @examples
#' calcite_autocomplete_item()
calcite_autocomplete_item <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-autocomplete-item",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a AutocompleteItemGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name     |Attribute |Description                                                   |Values |Reflects to Attribute |
#'  |:--------|:---------|:-------------------------------------------------------------|:------|:---------------------|
#'  |heading  |heading   |Specifies the component's heading text.                       |string |FALSE                 |
#'  |label    |label     |Specifies an accessible label for the component.              |any    |FALSE                 |
#'  |position |position  |Specifies the position of the group in the autocomplete menu. |number |FALSE                 |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                     |
#'  |:-----------------|:-----------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-autocomplete-item`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/autocomplete-item-group/)
#' @examples
#' calcite_autocomplete_item_group()
calcite_autocomplete_item_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-autocomplete-item-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Avatar component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name      |Attribute |Description                                                                                                                         |Values |Reflects to Attribute |
#'  |:---------|:---------|:-----------------------------------------------------------------------------------------------------------------------------------|:------|:---------------------|
#'  |fullName  |full-name |Specifies the full name of the user. When `label` and `thumbnail` are not defined, specifies the accessible name for the component. |string |TRUE                  |
#'  |label     |label     |Specifies alternative text when `thumbnail` is defined, otherwise specifies an accessible label for the component.                  |string |FALSE                 |
#'  |scale     |scale     |Specifies the size of the component.                                                                                                |Scale  |TRUE                  |
#'  |thumbnail |thumbnail |Specifies the `src` to an image. If the image is private, include an access token in the URL.                                       |string |TRUE                  |
#'  |userId    |user-id   |Specifies the unique id of the user.                                                                                                |string |TRUE                  |
#'  |username  |username  |Specifies the username of the user.                                                                                                 |string |TRUE                  |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/avatar/)
#' @examples
#' calcite_avatar()
calcite_avatar <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-avatar",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a BlockGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name         |Attribute     |Description                                                                                                                                                                                    |Values                                              |Reflects to Attribute |
#'  |:------------|:-------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------|:---------------------|
#'  |canPull      |NA            |When provided, the method will be called to determine whether the element can move from the component.                                                                                         |(detail: BlockDragDetail) => boolean &#124; "clone" |FALSE                 |
#'  |canPut       |NA            |When provided, the method will be called to determine whether the element can be added from another component.                                                                                 |(detail: BlockDragDetail) => boolean                |FALSE                 |
#'  |disabled     |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                       |boolean                                             |TRUE                  |
#'  |dragEnabled  |drag-enabled  |When `true`, `calcite-block`s are sortable via a draggable button.                                                                                                                             |boolean                                             |TRUE                  |
#'  |group        |group         |Specifies the component's group identifier.  To drag elements from one group into another, both groups must have the same group value.                                                         |string &#124; undefined                             |TRUE                  |
#'  |label        |label         |Specifies an accessible label for the component.  When `dragEnabled` is `true` and multiple group sorting is enabled with `group`, specifies the component's name for dragging between groups. |string                                              |FALSE                 |
#'  |loading      |loading       |When `true`, a busy indicator is displayed.                                                                                                                                                    |boolean                                             |TRUE                  |
#'  |scale        |scale         |Specifies the size of the component.                                                                                                                                                           |Scale                                               |TRUE                  |
#'  |sortDisabled |sort-disabled |When `true`, and a `group` is defined, `calcite-block`s are no longer sortable.                                                                                                                |boolean                                             |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                        |Description                                                                                                |
#'  |:----------------------------|:----------------------------------------------------------------------------------------------------------|
#'  |calciteBlockGroupDragEnd     |Fires when the component's dragging has ended.                                                             |
#'  |calciteBlockGroupDragStart   |Fires when the component's dragging has started.                                                           |
#'  |calciteBlockGroupMoveHalt    |Fires when a user attempts to move an element using the sort menu and 'canPut' or 'canPull' returns falsy. |
#'  |calciteBlockGroupOrderChange |Fires when the component's item order changes.                                                             |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                 |
#'  |:-----------------|:-------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-block` elements. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/block-group/)
#' @examples
#' calcite_block_group()
calcite_block_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-block-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a BlockSection component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute      |Description                                                                                                                                                |Values                    |Reflects to Attribute |
#'  |:----------------|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------------------|
#'  |expanded         |expanded       |When `true`, expands the component and its contents.                                                                                                       |boolean                   |TRUE                  |
#'  |iconEnd          |icon-end       |Specifies an icon to display at the end of the component.                                                                                                  |IconName                  |TRUE                  |
#'  |iconFlipRtl      |icon-flip-rtl  |Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                |FlipContext               |TRUE                  |
#'  |iconStart        |icon-start     |Specifies an icon to display at the start of the component.                                                                                                |IconName                  |TRUE                  |
#'  |messageOverrides |NA             |Overrides individual strings used by the component.                                                                                                        |Check API reference       |FALSE                 |
#'  |open             |open           |When `true`, expands the component and its contents.                                                                                                       |boolean                   |TRUE                  |
#'  |scale            |scale          |Specifies the size of the component.                                                                                                                       |Scale                     |TRUE                  |
#'  |status           |status         |Displays a status-related indicator icon.                                                                                                                  |Status                    |TRUE                  |
#'  |text             |text           |The component header text.                                                                                                                                 |string                    |FALSE                 |
#'  |toggleDisplay    |toggle-display |Specifies how the component's toggle is displayed, where:  `"button"` sets the toggle to a selectable header, and  `"switch"` sets the toggle to a switch. |BlockSectionToggleDisplay |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                       |Description                                           |
#'  |:---------------------------|:-----------------------------------------------------|
#'  |calciteBlockSectionCollapse |Fires when the component's content area is collapsed. |
#'  |calciteBlockSectionExpand   |Fires when the component's content area is expanded.  |
#'  |calciteBlockSectionToggle   |Fires when the header has been clicked.               |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding custom content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/block-section/)
#' @examples
#' calcite_block_section()
calcite_block_section <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-block-section",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Card component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name              |Attribute          |Description                                                                              |Values              |Reflects to Attribute |
#'  |:-----------------|:------------------|:----------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |disabled          |disabled           |When `true`, interaction is prevented and the component is displayed with lower opacity. |boolean             |TRUE                  |
#'  |label             |label              |Specifies an accessible label for the component.                                         |string              |FALSE                 |
#'  |loading           |loading            |When `true`, a busy indicator is displayed.                                              |boolean             |TRUE                  |
#'  |messageOverrides  |NA                 |Overrides individual strings used by the component.                                      |Check API reference |FALSE                 |
#'  |selectable        |selectable         |When `true`, the component is selectable.                                                |boolean             |TRUE                  |
#'  |selected          |selected           |When `true`, the component is selected.                                                  |boolean             |TRUE                  |
#'  |thumbnailPosition |thumbnail-position |Sets the placement of the thumbnail defined in the `thumbnail` slot.                     |LogicalFlowPosition |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event             |Description                                                                                                                                        |
#'  |:-----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |calciteCardSelect |Fires when the deprecated `selectable` is true, or `selectionMode` set on parent `calcite-card-group` is not `none` and the component is selected. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                          |
#'  |:-----------------|:------------------------------------|
#'  |Default (unnamed) |A slot for adding content.           |
#'  |thumbnail         |A slot for adding a thumbnail.       |
#'  |heading           |A slot for adding a heading.         |
#'  |description       |A slot for adding a description.     |
#'  |footer-start      |A slot for adding a leading footer.  |
#'  |footer-end        |A slot for adding a trailing footer. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/card/)
#' @examples
#' calcite_card()
calcite_card <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-card",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a CardGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name          |Attribute      |Description                                                                              |Values              |Reflects to Attribute |
#'  |:-------------|:--------------|:----------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |disabled      |disabled       |When `true`, interaction is prevented and the component is displayed with lower opacity. |boolean             |TRUE                  |
#'  |label         |label          |Specifies an accessible label for the component.                                         |string              |FALSE                 |
#'  |selectedItems |NA             |Specifies the component's selected items.                                                |Check API reference |FALSE                 |
#'  |selectionMode |selection-mode |Specifies the selection mode of the component.                                           |Check API reference |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                  |Description                                                                         |
#'  |:----------------------|:-----------------------------------------------------------------------------------|
#'  |calciteCardGroupSelect |Fires when the component's selection changes and the `selectionMode` is not `none`. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                    |
#'  |:-----------------|:----------------------------------------------|
#'  |Default (unnamed) |A slot for adding one or more `calcite-card`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/card-group/)
#' @examples
#' calcite_card_group()
calcite_card_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-card-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Carousel component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name               |Attribute           |Description                                                                                                                                                                      |Values              |Reflects to Attribute |
#'  |:------------------|:-------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |arrowType          |arrow-type          |Specifies how and if the "previous" and "next" arrows are displayed.                                                                                                             |ArrowType           |TRUE                  |
#'  |autoplay           |autoplay            |When `true`, the carousel will autoplay and controls will be displayed. When "paused" at time of initialization, the carousel will not autoplay, but controls will be displayed. |AutoplayType        |TRUE                  |
#'  |autoplayDuration   |autoplay-duration   |When `autoplay` is `true`, specifies in milliseconds the length of time to display each Carousel Item.                                                                           |number              |TRUE                  |
#'  |controlOverlay     |control-overlay     |Specifies if the component's controls are positioned absolutely on top of slotted Carousel Items.                                                                                |boolean             |TRUE                  |
#'  |disabled           |disabled            |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                         |boolean             |TRUE                  |
#'  |label              |label               |Specifies an accessible label for the component.                                                                                                                                 |string              |FALSE                 |
#'  |messageOverrides   |NA                  |Overrides individual strings used by the component.                                                                                                                              |Check API reference |FALSE                 |
#'  |paginationDisabled |pagination-disabled |When `true`, the component's pagination controls are hidden.                                                                                                                     |boolean             |FALSE                 |
#'  |selectedItem       |NA                  |The component's selected `calcite-carousel-item`.                                                                                                                                |CarouselItem        |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                                                                                                                                        |
#'  |:---------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |calciteCarouselChange |Fires when the selected `calcite-carousel-item` changes.                                                                                           |
#'  |calciteCarouselPause  |Fires when the carousel autoplay state pauses due to a user hovering over the component or focusing on the component or slotted content            |
#'  |calciteCarouselPlay   |Fires when the carousel autoplay is invoked by the user.                                                                                           |
#'  |calciteCarouselResume |Fires when the carousel autoplay state resumes due to a user no longer hovering over the component or focusing on the component or slotted content |
#'  |calciteCarouselStop   |Fires when the carousel autoplay state is stopped by a user.                                                                                       |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                 |
#'  |:-----------------|:-------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-carousel-item`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/carousel/)
#' @examples
#' calcite_carousel()
calcite_carousel <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-carousel",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a CarouselItem component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name     |Attribute |Description                                      |Values  |Reflects to Attribute |
#'  |:--------|:---------|:------------------------------------------------|:-------|:---------------------|
#'  |label    |label     |Specifies an accessible label for the component. |string  |FALSE                 |
#'  |selected |selected  |When `true`, the component is selected.          |boolean |TRUE                  |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                |
#'  |:-----------------|:--------------------------|
#'  |Default (unnamed) |A slot for adding content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/carousel-item/)
#' @examples
#' calcite_carousel_item()
calcite_carousel_item <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-carousel-item",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Checkbox component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute     |Description                                                                                                                                                              |Values               |Reflects to Attribute |
#'  |:----------------|:-------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------|:---------------------|
#'  |checked          |checked       |When `true`, the component is checked.                                                                                                                                   |boolean              |TRUE                  |
#'  |disabled         |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                 |boolean              |TRUE                  |
#'  |form             |form          |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists.                         |string               |TRUE                  |
#'  |indeterminate    |indeterminate |When `true`, the component is initially indeterminate, which is independent from its `checked` value.  The state is visual only, and can look different across browsers. |boolean              |TRUE                  |
#'  |label            |label         |Specifies an accessible label for the component.                                                                                                                         |string               |FALSE                 |
#'  |labelText        |label-text    |Specifies the component's label text.                                                                                                                                    |string               |FALSE                 |
#'  |messageOverrides |NA            |Overrides individual strings used by the component.                                                                                                                      |Check API reference  |FALSE                 |
#'  |name             |name          |Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                        |string               |TRUE                  |
#'  |required         |required      |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                        |boolean              |TRUE                  |
#'  |scale            |scale         |Specifies the size of the component.                                                                                                                                     |Scale                |TRUE                  |
#'  |status           |status        |Specifies the status of the input field, which determines message and icons.                                                                                             |Status               |TRUE                  |
#'  |validity         |NA            |The component's current validation state.                                                                                                                                |MutableValidityState |FALSE                 |
#'  |value            |value         |The component's value.                                                                                                                                                   |any                  |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                                          |
#'  |:---------------------|:----------------------------------------------------|
#'  |calciteCheckboxChange |Fires when the component's `checked` status changes. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/checkbox/)
#' @examples
#' calcite_checkbox()
calcite_checkbox <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-checkbox",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Chip component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute       |Description                                                                                                                 |Values              |Reflects to Attribute |
#'  |:----------------|:---------------|:---------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |appearance       |appearance      |Specifies the appearance style of the component.                                                                            |Check API reference |TRUE                  |
#'  |closable         |closable        |When `true`, displays a close button in the component.                                                                      |boolean             |TRUE                  |
#'  |closed           |closed          |When `true`, hides the component.                                                                                           |boolean             |TRUE                  |
#'  |closeOnDelete    |close-on-delete |When `true`, the component closes when the Delete or Backspace key is pressed while focused.                                |boolean             |TRUE                  |
#'  |disabled         |disabled        |When `true`, interaction is prevented and the component is displayed with lower opacity.                                    |boolean             |TRUE                  |
#'  |icon             |icon            |Specifies an icon to display.                                                                                               |IconName            |TRUE                  |
#'  |iconFlipRtl      |icon-flip-rtl   |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                |boolean             |TRUE                  |
#'  |kind             |kind            |Specifies the kind of the component, which will apply to border and background if applicable.                               |Check API reference |TRUE                  |
#'  |label            |label           |Specifies an accessible label for the component.                                                                            |string              |FALSE                 |
#'  |messageOverrides |NA              |Overrides individual strings used by the component.                                                                         |Check API reference |FALSE                 |
#'  |scale            |scale           |Specifies the size of the component.  When contained in a parent `calcite-chip-group`, inherits the parent's `scale` value. |Scale               |TRUE                  |
#'  |selected         |selected        |When `true`, the component is selected.                                                                                     |boolean             |TRUE                  |
#'  |value            |value           |The component's value.                                                                                                      |any                 |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event             |Description                                             |
#'  |:-----------------|:-------------------------------------------------------|
#'  |calciteChipClose  |Fires when the component's close button is selected.    |
#'  |calciteChipSelect |Fires when the selected state of the component changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                 |
#'  |:-----------------|:---------------------------|
#'  |Default (unnamed) |A slot for adding text.     |
#'  |image             |A slot for adding an image. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/chip/)
#' @examples
#' calcite_chip()
calcite_chip <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-chip",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ChipGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name          |Attribute      |Description                                                                                                                                                                                                                                                  |Values              |Reflects to Attribute |
#'  |:-------------|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |disabled      |disabled       |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                     |boolean             |TRUE                  |
#'  |label         |label          |Specifies an accessible label for the component.                                                                                                                                                                                                             |string              |FALSE                 |
#'  |scale         |scale          |Specifies the size of the component. Child `calcite-chip`s inherit the component's value.                                                                                                                                                                    |Scale               |TRUE                  |
#'  |selectedItems |NA             |Specifies the component's selected items.                                                                                                                                                                                                                    |Check API reference |FALSE                 |
#'  |selectionMode |selection-mode |Specifies the selection mode of the component, where:  `"multiple"` allows any number of selections,  `"single"` allows only one selection,  `"single-persist"` allows one selection and prevents de-selection, and  `"none"` does not allow any selections. |Check API reference |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                  |Description                                   |
#'  |:----------------------|:---------------------------------------------|
#'  |calciteChipGroupSelect |Fires when the component's selection changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                    |
#'  |:-----------------|:----------------------------------------------|
#'  |Default (unnamed) |A slot for adding one or more `calcite-chip`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/chip-group/)
#' @examples
#' calcite_chip_group()
calcite_chip_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-chip-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ColorPicker component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute         |Description                                                                                                                                                                          |Values                 |Reflects to Attribute |
#'  |:----------------|:-----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------|:---------------------|
#'  |alphaChannel     |alpha-channel     |When `true`, the component will allow updates to the color's alpha value.                                                                                                            |boolean                |FALSE                 |
#'  |channelsDisabled |channels-disabled |When `true`, hides the RGB/HSV channel inputs.                                                                                                                                       |boolean                |FALSE                 |
#'  |clearable        |clearable         |When `true`, an empty color (`null`) will be allowed as a `value`.  When `false`, a color value is enforced, and clearing the input or blurring will restore the last valid `value`. |boolean                |TRUE                  |
#'  |disabled         |disabled          |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                             |boolean                |TRUE                  |
#'  |fieldDisabled    |field-disabled    |When `true`, hides the color field.                                                                                                                                                  |boolean                |TRUE                  |
#'  |format           |format            |The format of `value`.  When `"auto"`, the format will be inferred from `value` when set.                                                                                            |Format                 |TRUE                  |
#'  |hexDisabled      |hex-disabled      |When `true`, hides the hex input.                                                                                                                                                    |boolean                |FALSE                 |
#'  |messageOverrides |NA                |Overrides individual strings used by the component.                                                                                                                                  |Check API reference    |FALSE                 |
#'  |numberingSystem  |numbering-system  |Specifies the Unicode numeral system used by the component for localization.                                                                                                         |NumberingSystem        |TRUE                  |
#'  |savedDisabled    |saved-disabled    |When `true`, hides the saved colors section.                                                                                                                                         |boolean                |TRUE                  |
#'  |scale            |scale             |Specifies the size of the component.                                                                                                                                                 |Scale                  |TRUE                  |
#'  |storageId        |storage-id        |Specifies the storage ID for colors.                                                                                                                                                 |string                 |TRUE                  |
#'  |value            |value             |The component's value, where the value can be a CSS color string, or a RGB, HSL or HSV object.  The type will be preserved as the color is updated.                                  |ColorValue &#124; null |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                                                                                                                                                                                  |
#'  |:------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |calciteColorPickerChange |Fires when the color value has changed.                                                                                                                                                                      |
#'  |calciteColorPickerInput  |Fires as the color value changes. Similar to the `calciteColorPickerChange` event with the exception of dragging. When dragging the color field or hue slider thumb, this event fires as the thumb is moved. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/color-picker/)
#' @examples
#' calcite_color_picker()
calcite_color_picker <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-color-picker",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Combobox component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name                   |Attribute                 |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |Values                  |Reflects to Attribute |
#'  |:----------------------|:-------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|:---------------------|
#'  |allowCustomValues      |allow-custom-values       |When `true`, allows entry of custom values, which are not in the original set of items.                                                                                                                                                                                                                                                                                                                                                                                                                             |boolean                 |TRUE                  |
#'  |clearDisabled          |clear-disabled            |When `true`, disables value-clearing.                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |boolean                 |TRUE                  |
#'  |disabled               |disabled                  |When `true`, prevents interaction and decreases the component's opacity.                                                                                                                                                                                                                                                                                                                                                                                                                                            |boolean                 |TRUE                  |
#'  |filteredItems          |NA                        |The component's filtered items.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |Check API reference     |FALSE                 |
#'  |filterProps            |NA                        |Specifies the properties to match against when filtering. If not set, all properties will be matched (`description`, `label`, `metadata`, `shortHeading`).                                                                                                                                                                                                                                                                                                                                                          |Check API reference     |FALSE                 |
#'  |filterText             |filter-text               |The component's filter input field text.                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |string                  |TRUE                  |
#'  |flipPlacements         |NA                        |Specifies the component's fallback `placement` for slotted content when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                                                                                                                                                                                     |Check API reference     |FALSE                 |
#'  |form                   |form                      |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists.                                                                                                                                                                                                                                                                                                                                                                    |string                  |TRUE                  |
#'  |label                  |label                     |Specifies an accessible label for the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |string                  |FALSE                 |
#'  |labelText              |label-text                |Specifies the component's label text.                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |string                  |FALSE                 |
#'  |maxItems               |max-items                 |Specifies the maximum number of `calcite-combobox-item`s (including nested children) to display before displaying a scrollbar.                                                                                                                                                                                                                                                                                                                                                                                      |number                  |TRUE                  |
#'  |messageOverrides       |NA                        |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |Check API reference     |FALSE                 |
#'  |name                   |name                      |Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                                                                                                                                                                                                                                                                                                                                                                   |string                  |TRUE                  |
#'  |open                   |open                      |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |boolean                 |TRUE                  |
#'  |overlayPositioning     |overlay-positioning       |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`.                                                                                                                                                         |OverlayPositioning      |TRUE                  |
#'  |placeholder            |placeholder               |Specifies the input's placeholder text.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |string                  |FALSE                 |
#'  |placeholderIcon        |placeholder-icon          |Specifies the input's placeholder icon.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |IconName                |TRUE                  |
#'  |placeholderIconFlipRtl |placeholder-icon-flip-rtl |When `true` and the element direction is right-to-left (`"rtl"`), flips the input's `placeholderIcon`.                                                                                                                                                                                                                                                                                                                                                                                                              |boolean                 |TRUE                  |
#'  |placement              |placement                 |Specifies the component's position relative to the `referenceElement`.                                                                                                                                                                                                                                                                                                                                                                                                                                              |LogicalPlacement        |TRUE                  |
#'  |readOnly               |read-only                 |When `true`, the component's value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                                                                                                                                                                   |boolean                 |TRUE                  |
#'  |required               |required                  |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                                                                                                                                                                                                                                                                                                                                                                   |boolean                 |TRUE                  |
#'  |scale                  |scale                     |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |Scale                   |TRUE                  |
#'  |selectAllEnabled       |select-all-enabled        |When `true` and `selectionMode` is `"multiple"` or `"ancestors"`, displays a checkbox for selecting all `calcite-combobox-item`s.                                                                                                                                                                                                                                                                                                                                                                                   |boolean                 |TRUE                  |
#'  |selectedItems          |NA                        |The component's selected items.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |Check API reference     |FALSE                 |
#'  |selectionDisplay       |selection-display         |When `selectionMode` is `"ancestors"` or `"multiple"`, specifies the display of multiple `calcite-combobox-item` selections, where:  `"all"` displays all selections with individual `calcite-chip`s,  `"fit"` displays individual `calcite-chip`s that scale to the component's size, including a non-closable `calcite-chip`, which provides the number of additional `calcite-combobox-item` selections not visually displayed, and  `"single"` displays one `calcite-chip` with the total number of selections. |SelectionDisplay        |TRUE                  |
#'  |selectionMode          |selection-mode            |Specifies the selection mode of the component, where:  `"multiple"` allows any number of selections,  `"single"` allows only one selection,  `"single-persist"` allows one selection and prevents de-selection, and  `"ancestors"` allows multiple selections, but shows ancestors of selected items as selected, with only deepest children shown in chips.                                                                                                                                                        |Check API reference     |TRUE                  |
#'  |status                 |status                    |Specifies the input field's status, which determines message and icons.                                                                                                                                                                                                                                                                                                                                                                                                                                             |Status                  |TRUE                  |
#'  |topLayerDisabled       |top-layer-disabled        |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                                                                                                                                                                                   |boolean                 |TRUE                  |
#'  |validationIcon         |validation-icon           |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                       |IconName &#124; boolean |TRUE                  |
#'  |validationMessage      |validation-message        |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                    |string                  |FALSE                 |
#'  |validity               |NA                        |The component's current validation state.                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |MutableValidityState    |FALSE                 |
#'  |value                  |value                     |The component's value(s) from the selected `calcite-combobox-item`(s).                                                                                                                                                                                                                                                                                                                                                                                                                                              |Check API reference     |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                       |Description                                                                                              |
#'  |:---------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteComboboxBeforeClose  |Fires when the component is requested to be closed, and before the closing transition begins.            |
#'  |calciteComboboxBeforeOpen   |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteComboboxChange       |Fires when the selected item(s) changes.                                                                 |
#'  |calciteComboboxChipClose    |Fires when a selected item in the component is closed via its `calcite-chip`.                            |
#'  |calciteComboboxClose        |Fires when the component is closed and animation is complete.                                            |
#'  |calciteComboboxFilterChange |Fires when text is added to filter the options list.                                                     |
#'  |calciteComboboxOpen         |Fires when the component is open and animation is complete.                                              |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                       |
#'  |:-----------------|:-----------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-combobox-item`s.                       |
#'  |label-content     |A slot for rendering content next to the component's `labelText`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox/)
#' @examples
#' calcite_combobox()
calcite_combobox <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-combobox",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ComboboxItem component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name           |Attribute       |Description                                                                                                                                                                 |Values              |Reflects to Attribute |
#'  |:--------------|:---------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |active         |active          |When `true`, the component is active.                                                                                                                                       |boolean             |TRUE                  |
#'  |ancestors      |NA              |Specifies the parent and grandparent `calcite-combobox-item`s, which are set on `calcite-combobox`.                                                                         |Check API reference |FALSE                 |
#'  |description    |description     |Specifies a description for the component. Displays below the heading.                                                                                                      |string              |FALSE                 |
#'  |disabled       |disabled        |When `true`, prevents interaction and decreases the component's opacity.                                                                                                    |boolean             |TRUE                  |
#'  |filterDisabled |filter-disabled |When `true`, omits the component from the `calcite-combobox` filtered search results.                                                                                       |boolean             |TRUE                  |
#'  |guid           |guid            |The `id` attribute of the component. When omitted, a globally unique identifier is used.                                                                                    |string              |TRUE                  |
#'  |heading        |heading         |Specifies the component's heading text.                                                                                                                                     |string              |FALSE                 |
#'  |icon           |icon            |Specifies an icon to display.                                                                                                                                               |IconName            |TRUE                  |
#'  |iconFlipRtl    |icon-flip-rtl   |When `true` and the element direction is right-to-left (`"rtl"`), flips the component`s `icon`.                                                                             |boolean             |TRUE                  |
#'  |label          |label           |Specifies an accessible label for the component.                                                                                                                            |any                 |FALSE                 |
#'  |metadata       |NA              |Specifies additional metadata to the component for use in filtering.                                                                                                        |Check API reference |FALSE                 |
#'  |selected       |selected        |When `true`, the component is selected.                                                                                                                                     |boolean             |TRUE                  |
#'  |shortHeading   |short-heading   |Specifies the component's short heading.  When provided, the short heading will be displayed in the component's selection.  It is recommended to use 5 characters or fewer. |string              |FALSE                 |
#'  |value          |value           |The component's value. Falls back to `heading` if not provided.                                                                                                             |any                 |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                     |Description                                             |
#'  |:-------------------------|:-------------------------------------------------------|
#'  |calciteComboboxItemChange |Fires whenever the component is selected or unselected. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                               |
#'  |:-----------------|:-------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding nested `calcite-combobox-item`s.                        |
#'  |content-end       |A slot for adding non-actionable elements after the component's content.  |
#'  |content-start     |A slot for adding non-actionable elements before the component's content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox-item/)
#' @examples
#' calcite_combobox_item()
calcite_combobox_item <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-combobox-item",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ComboboxItemGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name      |Attribute |Description                                                                                         |Values              |Reflects to Attribute |
#'  |:---------|:---------|:---------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |ancestors |NA        |Specifies the parent and grandparent `calcite-combobox-item`s, which are set on `calcite-combobox`. |Check API reference |FALSE                 |
#'  |label     |label     |Specifies an accessible label for the component.                                                    |string              |FALSE                 |
#'  |position  |position  |Specifies the group's position in the `calcite-combobox` menu.                                      |number              |FALSE                 |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                 |
#'  |:-----------------|:-------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-combobox-item`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox-item-group/)
#' @examples
#' calcite_combobox_item_group()
calcite_combobox_item_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-combobox-item-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Dialog component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name                 |Attribute              |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |Values              |Reflects to Attribute |
#'  |:--------------------|:----------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |beforeClose          |NA                     |Specifies a function to run before the component closes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |Check API reference |FALSE                 |
#'  |closeDisabled        |close-disabled         |When `true`, disables the component's close button.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |boolean             |TRUE                  |
#'  |description          |description            |Specifies the component's description.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |string              |FALSE                 |
#'  |dragEnabled          |drag-enabled           |When `true`, the component is draggable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |boolean             |TRUE                  |
#'  |escapeDisabled       |escape-disabled        |When `true`, disables the default close on escape behavior.  By default, an open dialog can be dismissed by pressing the Esc key.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |boolean             |TRUE                  |
#'  |focusTrapDisabled    |focus-trap-disabled    |When `true` and `modal` is `false`, prevents focus trapping.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |boolean             |TRUE                  |
#'  |focusTrapOptions     |NA                     |Specifies custom focus trap configuration on the component, where  `"allowOutsideClick`" allows outside clicks, `"initialFocus"` enables initial focus, `"returnFocusOnDeactivate"` returns focus when not active, `"extraContainers"` specifies additional focusable elements external to the trap, such as 3rd-party components appending elements to the document body, and `"setReturnFocus"` customizes the element to which focus is returned when the trap is deactivated. Return `false` to prevent focus return, or `undefined` to use the default behavior (returning focus to the element focused before activation). |Check API reference |FALSE                 |
#'  |fullscreenDisabled   |fullscreen-disabled    |When `true`, the component will not display at fullscreen, which may be desired in limited display areas, such as mobile devices.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |boolean             |TRUE                  |
#'  |heading              |heading                |Specifies the component's heading text.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |string              |FALSE                 |
#'  |headingLevel         |heading-level          |Specifies the heading level number of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |HeadingLevel        |TRUE                  |
#'  |icon                 |icon                   |Specifies an icon to display.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |IconName            |TRUE                  |
#'  |iconFlipRtl          |icon-flip-rtl          |When `true` and the element direction is right-to-left (`"rtl"`), flips the component`s `icon`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |boolean             |TRUE                  |
#'  |kind                 |kind                   |Specifies the component's kind, which determines the top border styling.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |Check API reference |TRUE                  |
#'  |loading              |loading                |When `true`, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |boolean             |TRUE                  |
#'  |menuOpen             |menu-open              |When `true`, the action menu items in the `header-menu-actions` slot are open.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |boolean             |TRUE                  |
#'  |messageOverrides     |NA                     |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |Check API reference |FALSE                 |
#'  |modal                |modal                  |When `true`, displays a scrim blocking interaction underneath the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |boolean             |TRUE                  |
#'  |open                 |open                   |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |boolean             |TRUE                  |
#'  |outsideCloseDisabled |outside-close-disabled |When `true`, disables the closing of the component when clicked outside.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |boolean             |TRUE                  |
#'  |overlayPositioning   |overlay-positioning    |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`.                                                                                                                                                                                                                                                                      |OverlayPositioning  |TRUE                  |
#'  |placement            |placement              |Specifies the component's placement.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |DialogPlacement     |TRUE                  |
#'  |resizable            |resizable              |When `true`, the component is resizable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |boolean             |TRUE                  |
#'  |scale                |scale                  |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |Scale               |TRUE                  |
#'  |topLayerDisabled     |top-layer-disabled     |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                                                                                                                                                                                                                                                                                                |boolean             |TRUE                  |
#'  |width                |width                  |Specifies the component's width.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |Check API reference |TRUE                  |
#'  |widthScale           |width-scale            |Specifies the component's width.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |Scale               |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                                                                              |
#'  |:------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteDialogBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteDialogBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteDialogClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteDialogOpen        |Fires when the component is opened and animation is complete.                                            |
#'  |calciteDialogScroll      |Fires when the component's content is scrolled.                                                          |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot                 |Description                                                                                                                                |
#'  |:--------------------|:------------------------------------------------------------------------------------------------------------------------------------------|
#'  |Default (unnamed)    |A slot for adding content.                                                                                                                 |
#'  |custom-content       |A slot for displaying custom content. Will prevent the rendering of any default component UI, except for `box-shadow` and `corner-radius`. |
#'  |action-bar           |A slot for adding a `calcite-action-bar` to the component.                                                                                 |
#'  |alerts               |A slot for adding `calcite-alert`s to the component.                                                                                       |
#'  |content-bottom       |A slot for adding content below the unnamed (default) slot and - if populated - the `footer` slot.                                         |
#'  |content-top          |A slot for adding content above the unnamed (default) slot and - if populated - below the `action-bar` slot.                               |
#'  |header-actions-start |A slot for adding actions or content to the starting side of the component's header.                                                       |
#'  |header-actions-end   |A slot for adding actions or content to the ending side of the component's header.                                                         |
#'  |header-content       |A slot for adding custom content to the component's header.                                                                                |
#'  |header-menu-actions  |A slot for adding an overflow menu with actions inside a `calcite-dropdown`.                                                               |
#'  |fab                  |A slot for adding a `calcite-fab` (floating action button) to perform an action.                                                           |
#'  |footer               |A slot for adding custom content to the component's footer. Should not be used with the `footer-start` or `footer-end` slots.              |
#'  |footer-end           |A slot for adding a trailing footer custom content. Should not be used with the `footer` slot.                                             |
#'  |footer-start         |A slot for adding a leading footer custom content. Should not be used with the `footer` slot.                                              |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dialog/)
#' @examples
#' calcite_dialog()
calcite_dialog <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-dialog",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a DropdownGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name          |Attribute      |Description                                                                                                                                                                              |Values              |Reflects to Attribute |
#'  |:-------------|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |groupTitle    |group-title    |When specified, displays a group title.                                                                                                                                                  |string              |TRUE                  |
#'  |position      |position       |The position of the group in the dropdown menu.                                                                                                                                          |number              |FALSE                 |
#'  |selectionMode |selection-mode |Specifies the selection mode of the component, where:  `"multiple"` allows any number of selections,  `"single"` allows only one selection, and  `"none"` does not allow any selections. |Check API reference |TRUE                  |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                 |
#'  |:-----------------|:-------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-dropdown-item`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown-group/)
#' @examples
#' calcite_dropdown_group()
calcite_dropdown_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-dropdown-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Fab component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name        |Attribute     |Description                                                                                     |Values                  |Reflects to Attribute |
#'  |:-----------|:-------------|:-----------------------------------------------------------------------------------------------|:-----------------------|:---------------------|
#'  |appearance  |appearance    |Specifies the component's appearance style.                                                     |Check API reference     |TRUE                  |
#'  |disabled    |disabled      |When `true`, prevents interaction and decreases the component's opacity.                        |boolean                 |TRUE                  |
#'  |icon        |icon          |Specifies an icon to display.                                                                   |IconName                |TRUE                  |
#'  |iconFlipRtl |icon-flip-rtl |When `true` and the element direction is right-to-left (`"rtl"`), flips the component`s `icon`. |boolean                 |TRUE                  |
#'  |kind        |kind          |Specifies the component's kind, which determines border and background styling.                 |Check API reference     |TRUE                  |
#'  |label       |label         |Specifies an accessible label for the component.                                                |string &#124; undefined |FALSE                 |
#'  |loading     |loading       |When `true`, a busy indicator is displayed.                                                     |boolean                 |TRUE                  |
#'  |scale       |scale         |Specifies the size of the component.                                                            |Scale                   |TRUE                  |
#'  |text        |text          |Specifies text to accompany the component's icon.                                               |string &#124; undefined |FALSE                 |
#'  |textEnabled |text-enabled  |When `true`, displays the `text` value in the component.                                        |boolean                 |TRUE                  |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/fab/)
#' @examples
#' calcite_fab()
calcite_fab <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-fab",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Filter component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute   |Description                                                                                                                                                                                                                                     |Values                  |Reflects to Attribute |
#'  |:----------------|:-----------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|:---------------------|
#'  |disabled         |disabled    |When `true`, prevents interaction and decreases the component's opacity.                                                                                                                                                                        |boolean                 |TRUE                  |
#'  |filteredItems    |NA          |The component's resulting items after filtering.                                                                                                                                                                                                |Check API reference     |FALSE                 |
#'  |filterProps      |NA          |When `value` is an object, specifies the properties to match against when filtering. If not set, all properties will be matched.                                                                                                                |Check API reference     |FALSE                 |
#'  |items            |NA          |Specifies the items to filter. The component uses the values as the starting point, and returns items  that contain the string entered in the input, using a partial match and recursive search.  This property is needed to conduct filtering. |Check API reference     |FALSE                 |
#'  |label            |label       |Specifies an accessible label for the component.                                                                                                                                                                                                |string &#124; undefined |FALSE                 |
#'  |messageOverrides |NA          |Overrides individual strings used by the component.                                                                                                                                                                                             |Check API reference     |FALSE                 |
#'  |placeholder      |placeholder |Specifies the component's input placeholder text.                                                                                                                                                                                               |string &#124; undefined |FALSE                 |
#'  |scale            |scale       |Specifies the size of the component.                                                                                                                                                                                                            |Scale                   |TRUE                  |
#'  |value            |value       |The component's value.                                                                                                                                                                                                                          |string                  |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event               |Description                         |
#'  |:-------------------|:-----------------------------------|
#'  |calciteFilterChange |Fires when the filter text changes. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/filter/)
#' @examples
#' calcite_filter()
calcite_filter <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-filter",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Flow component
#'
#' 
#'
#' 
#'
#' @details
#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                              |
#'  |:-----------------|:--------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-flow-item`s to the component. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/flow/)
#' @examples
#' calcite_flow()
calcite_flow <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-flow",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a FlowItem component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                 |Values              |Reflects to Attribute |
#'  |:------------------|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |beforeBack         |NA                  |Specifies a function to run before the component is removed from its parent `calcite-flow`.                                                                                                                                                                                                                                                                 |Check API reference |FALSE                 |
#'  |beforeClose        |NA                  |Specifies a function to run before the component closes.                                                                                                                                                                                                                                                                                                    |Check API reference |FALSE                 |
#'  |closable           |closable            |When `true`, displays a close button in the trailing side of the component's header.                                                                                                                                                                                                                                                                        |boolean             |TRUE                  |
#'  |closed             |closed              |When `true`, hides the component.                                                                                                                                                                                                                                                                                                                           |boolean             |TRUE                  |
#'  |collapsed          |collapsed           |When `true`, hides the component's content area.                                                                                                                                                                                                                                                                                                            |boolean             |TRUE                  |
#'  |collapsible        |collapsible         |When `true`, the component is collapsible.                                                                                                                                                                                                                                                                                                                  |boolean             |TRUE                  |
#'  |description        |description         |Specifies a the component's description.                                                                                                                                                                                                                                                                                                                    |string              |FALSE                 |
#'  |disabled           |disabled            |When `true`, prevents interaction and decreases the component's opacity.                                                                                                                                                                                                                                                                                    |boolean             |TRUE                  |
#'  |heading            |heading             |Specifies the component's heading text.                                                                                                                                                                                                                                                                                                                     |string              |FALSE                 |
#'  |headingLevel       |heading-level       |Specifies the heading level number of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                            |HeadingLevel        |TRUE                  |
#'  |icon               |icon                |Specifies an icon to display.                                                                                                                                                                                                                                                                                                                               |IconName            |TRUE                  |
#'  |iconFlipRtl        |icon-flip-rtl       |When `true` and the element direction is right-to-left (`"rtl"`), flips the component`s `icon`.                                                                                                                                                                                                                                                             |boolean             |TRUE                  |
#'  |loading            |loading             |When `true`, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                 |boolean             |TRUE                  |
#'  |menuOpen           |menu-open           |When `true`, the action menu items in the `header-menu-actions` slot are open.                                                                                                                                                                                                                                                                              |boolean             |TRUE                  |
#'  |messageOverrides   |NA                  |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                         |Check API reference |FALSE                 |
#'  |overlayPositioning |overlay-positioning |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |OverlayPositioning  |TRUE                  |
#'  |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                        |Scale               |TRUE                  |
#'  |selected           |selected            |When `true`, the component is displayed within a parent `calcite-flow`.                                                                                                                                                                                                                                                                                     |boolean             |TRUE                  |
#'  |showBackButton     |show-back-button    |When `true`, displays a back button in the component's header.                                                                                                                                                                                                                                                                                              |boolean             |FALSE                 |
#'  |topLayerDisabled   |top-layer-disabled  |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                           |boolean             |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                   |Description                                            |
#'  |:-----------------------|:------------------------------------------------------|
#'  |calciteFlowItemBack     |Fires when the component's back button is clicked.     |
#'  |calciteFlowItemClose    |Fires when the component's close button is clicked.    |
#'  |calciteFlowItemCollapse |Fires when the component's content area is collapsed.  |
#'  |calciteFlowItemExpand   |Fires when the component's content area is expanded.   |
#'  |calciteFlowItemScroll   |Fires when the component's content is scrolled.        |
#'  |calciteFlowItemToggle   |Fires when the component's collapse button is clicked. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot                 |Description                                                                                                                   |
#'  |:--------------------|:-----------------------------------------------------------------------------------------------------------------------------|
#'  |Default (unnamed)    |A slot for adding custom content.                                                                                             |
#'  |action-bar           |A slot for adding a `calcite-action-bar` to the component.                                                                    |
#'  |alerts               |A slot for adding `calcite-alert`s to the component.                                                                          |
#'  |content-top          |A slot for adding content above the unnamed (default) slot and below the action-bar slot (if populated).                      |
#'  |content-bottom       |A slot for adding content below the unnamed (default) slot and above the footer slot (if populated)                           |
#'  |header-actions-start |A slot for adding `calcite-action`s or content to the start side of the component's header.                                   |
#'  |header-actions-end   |A slot for adding `calcite-action`s or content to the end side of the component's header.                                     |
#'  |header-content       |A slot for adding custom content to the component's header.                                                                   |
#'  |header-menu-actions  |A slot for adding an overflow menu with `calcite-action`s inside a `calcite-dropdown`.                                        |
#'  |fab                  |A slot for adding a `calcite-fab` (floating action button) to perform an action.                                              |
#'  |footer               |A slot for adding custom content to the component's footer. Should not be used with the `footer-start` or `footer-end` slots. |
#'  |footer-end           |A slot for adding a trailing footer custom content. Should not be used with the `footer` slot.                                |
#'  |footer-start         |A slot for adding a leading footer custom content. Should not be used with the `footer` slot.                                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/flow-item/)
#' @examples
#' calcite_flow_item()
calcite_flow_item <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-flow-item",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Icon component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name      |Attribute  |Description                                                                                               |Values   |Reflects to Attribute |
#'  |:---------|:----------|:---------------------------------------------------------------------------------------------------------|:--------|:---------------------|
#'  |flipRtl   |flip-rtl   |When `true` and the element direction is right-to-left (`"rtl"`), flips the component's `icon`.           |boolean  |TRUE                  |
#'  |icon      |icon       |Specifies an icon to display.                                                                             |IconName |TRUE                  |
#'  |preload   |preload    |When `true`, preloads the `icon` data.                                                                    |boolean  |TRUE                  |
#'  |scale     |scale      |Specifies the size of the component.                                                                      |Scale    |TRUE                  |
#'  |textLabel |text-label |Specifies the component's accessible name.  It is recommended to set this value if your icon is semantic. |string   |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/icon/)
#' @examples
#' calcite_icon()
calcite_icon <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-icon",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a InlineEditable component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute       |Description                                                                                                                                                  |Values              |Reflects to Attribute |
#'  |:----------------|:---------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |afterConfirm     |NA              |Specifies a callback to be executed prior to disabling editing via the controls. When provided, the component's loading state will be handled automatically. |Check API reference |FALSE                 |
#'  |controls         |controls        |When `true` and `editingEnabled` is `true`, displays save and cancel controls.                                                                               |boolean             |TRUE                  |
#'  |disabled         |disabled        |When `true`, prevents interaction and decreases the component's opacity.                                                                                     |boolean             |TRUE                  |
#'  |editingEnabled   |editing-enabled |When `true`, inline editing is enabled.                                                                                                                      |boolean             |TRUE                  |
#'  |loading          |loading         |When `true`, a busy indicator is displayed.                                                                                                                  |boolean             |TRUE                  |
#'  |messageOverrides |NA              |Overrides individual strings used by the component.                                                                                                          |Check API reference |FALSE                 |
#'  |scale            |scale           |Specifies the size of the component.                                                                                                                         |Scale               |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                            |Description                                                    |
#'  |:--------------------------------|:--------------------------------------------------------------|
#'  |calciteInlineEditableEditCancel  |Fires when the component's "cancel editing" button is pressed. |
#'  |calciteInlineEditableEditConfirm |Fires when the component's "confirm edits" button is pressed.  |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                          |
#'  |:-----------------|:------------------------------------|
#'  |Default (unnamed) |A slot for adding a `calcite-input`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/inline-editable/)
#' @examples
#' calcite_inline_editable()
calcite_inline_editable <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-inline-editable",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Input component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name              |Attribute          |Description                                                                                                                                                                                             |Values                                                                                                                                                                                                                         |Reflects to Attribute |
#'  |:-----------------|:------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|
#'  |accept            |accept             |When `type` is `"file"`, specifies a comma separated list of unique file type specifiers for limiting accepted file types. Read the native attribute's documentation on MDN for more info.              |string                                                                                                                                                                                                                         |FALSE                 |
#'  |alignment         |alignment          |Specifies the text alignment of the component's `value`.                                                                                                                                                |Check API reference                                                                                                                                                                                                            |TRUE                  |
#'  |autocomplete      |autocomplete       |Specifies the type of content to autocomplete, for use in forms. Read the native attribute's documentation on MDN for more info.                                                                        |AutoFill                                                                                                                                                                                                                       |FALSE                 |
#'  |clearable         |clearable          |When `true` and the component has a `value`, a clear button is displayed. The clear button shows by default for `"search"`, `"time"`, and `"date"` types.                                               |boolean                                                                                                                                                                                                                        |TRUE                  |
#'  |disabled          |disabled           |When `true`, prevents interaction and decreases the component's opacity.                                                                                                                                |boolean                                                                                                                                                                                                                        |TRUE                  |
#'  |files             |NA                 |When `type` is `"file"`, specifies the component's selected files.                                                                                                                                      |FileList &#124; undefined                                                                                                                                                                                                      |FALSE                 |
#'  |form              |form               |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists.                                                        |string                                                                                                                                                                                                                         |TRUE                  |
#'  |groupSeparator    |group-separator    |When `true`, number values are displayed with a group separator corresponding to the language and country format.                                                                                       |boolean                                                                                                                                                                                                                        |TRUE                  |
#'  |icon              |icon               |When `true`, displays a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon.                                                                                |IconName &#124; boolean                                                                                                                                                                                                        |TRUE                  |
#'  |iconFlipRtl       |icon-flip-rtl      |When `true` and the element direction is right-to-left (`"rtl"`), flips the component`s `icon`.                                                                                                         |boolean                                                                                                                                                                                                                        |TRUE                  |
#'  |label             |label              |Specifies an accessible label for the component.                                                                                                                                                        |string                                                                                                                                                                                                                         |FALSE                 |
#'  |labelText         |label-text         |Specifies the component's label text.                                                                                                                                                                   |string                                                                                                                                                                                                                         |FALSE                 |
#'  |loading           |loading            |When `true`, a busy indicator is displayed.                                                                                                                                                             |boolean                                                                                                                                                                                                                        |TRUE                  |
#'  |max               |max                |When the component resides in a form, specifies the maximum value for `type="number"`.                                                                                                                  |number                                                                                                                                                                                                                         |TRUE                  |
#'  |maxLength         |max-length         |When the component resides in a form, specifies the maximum length of text for the component's `value`.                                                                                                 |number                                                                                                                                                                                                                         |TRUE                  |
#'  |messageOverrides  |NA                 |Overrides individual strings used by the component.                                                                                                                                                     |Check API reference                                                                                                                                                                                                            |FALSE                 |
#'  |min               |min                |When the component resides in a form, specifies the minimum value for `type="number"`.                                                                                                                  |number                                                                                                                                                                                                                         |TRUE                  |
#'  |minLength         |min-length         |When the component resides in a form, specifies the minimum length of text for the component's `value`.                                                                                                 |number                                                                                                                                                                                                                         |TRUE                  |
#'  |multiple          |multiple           |When `true` and `type` is `"email"` or `"file"`, the component can accept more than one value. Read the native attribute's documentation on MDN for more info.                                          |boolean                                                                                                                                                                                                                        |FALSE                 |
#'  |name              |name               |Specifies the name of the component.  Required to pass the component's `value` on form submission.                                                                                                      |string                                                                                                                                                                                                                         |TRUE                  |
#'  |numberButtonType  |number-button-type |When `type="number"`, specifies the placement of the buttons.                                                                                                                                           |InputPlacement                                                                                                                                                                                                                 |TRUE                  |
#'  |numberingSystem   |numbering-system   |Specifies the Unicode numeral system used by the component for localization.                                                                                                                            |NumberingSystem                                                                                                                                                                                                                |TRUE                  |
#'  |pattern           |pattern            |When the component resides in a form, specifies a regular expression (regex) pattern the component's `value` must match for validation. Read the native attribute's documentation on MDN for more info. |string                                                                                                                                                                                                                         |FALSE                 |
#'  |placeholder       |placeholder        |Specifies the component's placeholder text.                                                                                                                                                             |string                                                                                                                                                                                                                         |FALSE                 |
#'  |prefixText        |prefix-text        |Specifies text to display at the start of the component.                                                                                                                                                |string                                                                                                                                                                                                                         |FALSE                 |
#'  |readOnly          |read-only          |When `true`, the component's `value` can be read, but cannot be modified.                                                                                                                               |boolean                                                                                                                                                                                                                        |TRUE                  |
#'  |required          |required           |When `true` and the component resides in a form, the component must have a `value` in order for the form to submit.                                                                                     |boolean                                                                                                                                                                                                                        |TRUE                  |
#'  |scale             |scale              |Specifies the size of the component.                                                                                                                                                                    |Scale                                                                                                                                                                                                                          |TRUE                  |
#'  |status            |status             |Specifies the input field's status, which determines message and icons.                                                                                                                                 |Status                                                                                                                                                                                                                         |TRUE                  |
#'  |step              |step               |Specifies the granularity the component's `value` must adhere to.                                                                                                                                       |number &#124; "any"                                                                                                                                                                                                            |TRUE                  |
#'  |suffixText        |suffix-text        |Specifies text to display at the end of the component.                                                                                                                                                  |string                                                                                                                                                                                                                         |FALSE                 |
#'  |type              |type               |Specifies the component type.  Note that the following `type`s add type-specific icons by default: `"date"`, `"email"`, `"password"`, `"search"`, `"tel"`, `"time"`.                                    |"color" &#124; "date" &#124; "datetime-local" &#124; "email" &#124; "file" &#124; "image" &#124; "month" &#124; "number" &#124; "password" &#124; "search" &#124; "tel" &#124; "text" &#124; "time" &#124; "url" &#124; "week" |TRUE                  |
#'  |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                                                                           |IconName &#124; boolean                                                                                                                                                                                                        |TRUE                  |
#'  |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                                                                        |string                                                                                                                                                                                                                         |FALSE                 |
#'  |validity          |NA                 |The component's current validation state.                                                                                                                                                               |MutableValidityState                                                                                                                                                                                                           |FALSE                 |
#'  |value             |value              |The component's value.                                                                                                                                                                                  |string                                                                                                                                                                                                                         |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event              |Description                                           |
#'  |:------------------|:-----------------------------------------------------|
#'  |calciteInputChange |Fires each time a new `value` is typed and committed. |
#'  |calciteInputInput  |Fires each time a new `value` is typed.               |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot          |Description                                                                                       |
#'  |:-------------|:-------------------------------------------------------------------------------------------------|
#'  |action        |A slot for positioning a `calcite-action` or other interactive content adjacent to the component. |
#'  |label-content |A slot for rendering content next to the component's `labelText`.                                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input/)
#' @examples
#' calcite_input()
calcite_input <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-input",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a InputDatePicker component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name                       |Attribute                    |Description                                                                                                                                                                                                                                                                                                                                                 |Values                         |Reflects to Attribute |
#'  |:--------------------------|:----------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------|:---------------------|
#'  |calendars                  |calendars                    |When `range` is `true`, specifies the number of calendars displayed.                                                                                                                                                                                                                                                                                        |1 &#124; 2                     |TRUE                  |
#'  |disabled                   |disabled                     |When `true`, prevents interaction and decreases the component's opacity.                                                                                                                                                                                                                                                                                    |boolean                        |TRUE                  |
#'  |flipPlacements             |NA                           |Specifies the component's fallback `placement` for slotted content when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                             |Check API reference            |FALSE                 |
#'  |focusTrapDisabled          |focus-trap-disabled          |When `true`, prevents focus trapping.                                                                                                                                                                                                                                                                                                                       |boolean                        |TRUE                  |
#'  |form                       |form                         |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists.                                                                                                                                                                                                            |string                         |TRUE                  |
#'  |headingLevel               |heading-level                |Specifies the heading level number of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                            |HeadingLevel                   |TRUE                  |
#'  |label                      |label                        |Specifies an accessible label for the component.                                                                                                                                                                                                                                                                                                            |string                         |FALSE                 |
#'  |labelText                  |label-text                   |Specifies the component's label text.                                                                                                                                                                                                                                                                                                                       |string                         |FALSE                 |
#'  |layout                     |layout                       |Defines the component's layout.                                                                                                                                                                                                                                                                                                                             |"horizontal" &#124; "vertical" |TRUE                  |
#'  |max                        |max                          |When the component resides in a form, specifies the latest allowed date ("yyyy-mm-dd").                                                                                                                                                                                                                                                                     |string                         |TRUE                  |
#'  |maxAsDate                  |NA                           |Specifies the latest allowed date as a full date object.                                                                                                                                                                                                                                                                                                    |Date                           |FALSE                 |
#'  |messageOverrides           |NA                           |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                         |Check API reference            |FALSE                 |
#'  |min                        |min                          |When the component resides in a form, specifies the earliest allowed date ("yyyy-mm-dd").                                                                                                                                                                                                                                                                   |string                         |TRUE                  |
#'  |minAsDate                  |NA                           |Specifies the earliest allowed date as a full date object.                                                                                                                                                                                                                                                                                                  |Date                           |FALSE                 |
#'  |monthStyle                 |month-style                  |Specifies the component's month style.                                                                                                                                                                                                                                                                                                                      |"abbreviated" &#124; "wide"    |FALSE                 |
#'  |name                       |name                         |Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                                                                                                                                                                                                           |string                         |TRUE                  |
#'  |numberingSystem            |numbering-system             |Specifies the Unicode numeral system used by the component for localization. This property cannot be dynamically changed.                                                                                                                                                                                                                                   |NumberingSystem                |TRUE                  |
#'  |open                       |open                         |When `true`, displays the `calcite-date-picker` component.                                                                                                                                                                                                                                                                                                  |boolean                        |TRUE                  |
#'  |overlayPositioning         |overlay-positioning          |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |OverlayPositioning             |TRUE                  |
#'  |placement                  |placement                    |Determines the `calcite-date-picker`'s placement relative to the input.                                                                                                                                                                                                                                                                                     |MenuPlacement                  |TRUE                  |
#'  |proximitySelectionDisabled |proximity-selection-disabled |When `true`, disables the default behavior on the third click of narrowing or extending the range. Instead starts a new range.                                                                                                                                                                                                                              |boolean                        |FALSE                 |
#'  |range                      |range                        |When `true`, activates a range for the component.                                                                                                                                                                                                                                                                                                           |boolean                        |TRUE                  |
#'  |readOnly                   |read-only                    |When `true`, the component's `value` can be read, but controls are not accessible and the `value` cannot be modified.                                                                                                                                                                                                                                       |boolean                        |TRUE                  |
#'  |required                   |required                     |When `true` and the component resides in a form, the component must have a `value` in order for the form to submit.                                                                                                                                                                                                                                         |boolean                        |TRUE                  |
#'  |scale                      |scale                        |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                        |"s" &#124; "m" &#124; "l"      |TRUE                  |
#'  |status                     |status                       |Specifies the input field's status, which determines message and icons.                                                                                                                                                                                                                                                                                     |Status                         |TRUE                  |
#'  |topLayerDisabled           |top-layer-disabled           |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                           |boolean                        |TRUE                  |
#'  |validationIcon             |validation-icon              |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                               |IconName &#124; boolean        |TRUE                  |
#'  |validationMessage          |validation-message           |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                            |string                         |FALSE                 |
#'  |validity                   |NA                           |The component's current validation state.                                                                                                                                                                                                                                                                                                                   |MutableValidityState           |FALSE                 |
#'  |value                      |value                        |Selected date as a string in ISO format (`"yyyy-mm-dd"`).                                                                                                                                                                                                                                                                                                   |Check API reference            |FALSE                 |
#'  |valueAsDate                |NA                           |The component's `value` as a full date object.                                                                                                                                                                                                                                                                                                              |Check API reference            |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                             |Description                                                                                              |
#'  |:---------------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteInputDatePickerBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteInputDatePickerBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteInputDatePickerChange      |Fires when the component's `value` changes.                                                              |
#'  |calciteInputDatePickerClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteInputDatePickerOpen        |Fires when the component is opened and animation is complete.                                            |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot          |Description                                                       |
#'  |:-------------|:-----------------------------------------------------------------|
#'  |label-content |A slot for rendering content next to the component's `labelText`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-date-picker/)
#' @examples
#' calcite_input_date_picker()
calcite_input_date_picker <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-input-date-picker",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a InputTimePicker component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                 |Values                  |Reflects to Attribute |
#'  |:------------------|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|:---------------------|
#'  |disabled           |disabled            |When `true`, prevents interaction and decreases the component's opacity.                                                                                                                                                                                                                                                                                    |boolean                 |TRUE                  |
#'  |focusTrapDisabled  |focus-trap-disabled |When `true`, prevents focus trapping.                                                                                                                                                                                                                                                                                                                       |boolean                 |TRUE                  |
#'  |form               |form                |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists.                                                                                                                                                                                                            |string                  |TRUE                  |
#'  |hourFormat         |hour-format         |Specifies the component's hour format, where:  `"user"` displays the user's locale format, `"12"` displays a 12-hour format, and `"24"` displays a 24-hour format.                                                                                                                                                                                          |HourFormat              |TRUE                  |
#'  |label              |label               |Specifies an accessible label for the component.                                                                                                                                                                                                                                                                                                            |string                  |FALSE                 |
#'  |labelText          |label-text          |Specifies the component's label text.                                                                                                                                                                                                                                                                                                                       |string                  |FALSE                 |
#'  |max                |max                 |When the component resides in a form, specifies the maximum `value`.                                                                                                                                                                                                                                                                                        |string                  |TRUE                  |
#'  |messageOverrides   |NA                  |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                         |Check API reference     |FALSE                 |
#'  |min                |min                 |When the component resides in a form, specifies the minimum `value`.                                                                                                                                                                                                                                                                                        |string                  |TRUE                  |
#'  |name               |name                |Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                                                                                                                                                                                                           |string                  |FALSE                 |
#'  |numberingSystem    |numbering-system    |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                                                                                                                                                                |NumberingSystem         |TRUE                  |
#'  |open               |open                |When `true`, displays the `calcite-time-picker` component.                                                                                                                                                                                                                                                                                                  |boolean                 |TRUE                  |
#'  |overlayPositioning |overlay-positioning |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |OverlayPositioning      |FALSE                 |
#'  |placement          |placement           |Determines the `calcite-time-picker`'s position relative to the input.                                                                                                                                                                                                                                                                                      |LogicalPlacement        |TRUE                  |
#'  |readOnly           |read-only           |When `true`, the component's `value` can be read, but controls are not accessible and the `value` cannot be modified.                                                                                                                                                                                                                                       |boolean                 |TRUE                  |
#'  |required           |required            |When `true` and the component resides in a form, the component must have a `value` in order for the form to submit.                                                                                                                                                                                                                                         |boolean                 |TRUE                  |
#'  |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                        |Scale                   |TRUE                  |
#'  |status             |status              |Specifies the input field's status, which determines message and icons.                                                                                                                                                                                                                                                                                     |Status                  |TRUE                  |
#'  |step               |step                |Specifies the granularity the component's `value` must adhere to (in seconds).                                                                                                                                                                                                                                                                              |number                  |TRUE                  |
#'  |validationIcon     |validation-icon     |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                               |IconName &#124; boolean |TRUE                  |
#'  |validationMessage  |validation-message  |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                            |string                  |FALSE                 |
#'  |validity           |NA                  |The component's current validation state.                                                                                                                                                                                                                                                                                                                   |MutableValidityState    |FALSE                 |
#'  |value              |value               |The time value in ISO (24-hour) format.                                                                                                                                                                                                                                                                                                                     |string                  |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                             |Description                                                                                              |
#'  |:---------------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteInputTimePickerBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteInputTimePickerBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteInputTimePickerChange      |Fires when the component's `value` is modified by the user.                                              |
#'  |calciteInputTimePickerClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteInputTimePickerOpen        |Fires when the component is opened and animation is complete.                                            |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot          |Description                                                       |
#'  |:-------------|:-----------------------------------------------------------------|
#'  |label-content |A slot for rendering content next to the component's `labelText`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-time-picker/)
#' @examples
#' calcite_input_time_picker()
calcite_input_time_picker <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-input-time-picker",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a InputTimeZone component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                 |Values                  |Reflects to Attribute |
#'  |:------------------|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|:---------------------|
#'  |clearable          |clearable           |When `true`, an empty value (`null`) will be allowed as a `value`.  When `false`, an offset or name value is enforced, and clearing the input or blurring will restore the last valid `value`.                                                                                                                                                              |boolean                 |TRUE                  |
#'  |disabled           |disabled            |When `true`, prevents interaction and decreases the component's opacity.                                                                                                                                                                                                                                                                                    |boolean                 |TRUE                  |
#'  |form               |form                |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists.                                                                                                                                                                                                            |string                  |TRUE                  |
#'  |labelText          |label-text          |Specifies the component's label text.                                                                                                                                                                                                                                                                                                                       |string                  |FALSE                 |
#'  |maxItems           |max-items           |Specifies the component's maximum number of options to display before displaying a scrollbar.                                                                                                                                                                                                                                                               |number                  |TRUE                  |
#'  |messageOverrides   |NA                  |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                         |Check API reference     |FALSE                 |
#'  |mode               |mode                |This specifies the type of `value` and the associated options presented to the user:  Using `"offset"` will provide options that show timezone offsets.  Using `"name"` will provide options that show the IANA time zone names.                                                                                                                            |TimeZoneMode            |TRUE                  |
#'  |name               |name                |Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                                                                                                                                                                                                           |string                  |TRUE                  |
#'  |offsetStyle        |offset-style        |When `mode` is `"offset"`, specifies how the offset will be displayed, where  `"user"` uses `UTC` or `GMT` depending on the user's locale, `"gmt"` always uses `GMT`, and `"utc"` always uses `UTC`.                                                                                                                                                        |OffsetStyle             |TRUE                  |
#'  |open               |open                |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                          |boolean                 |TRUE                  |
#'  |overlayPositioning |overlay-positioning |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |OverlayPositioning      |TRUE                  |
#'  |readOnly           |read-only           |When `true`, the component's `value` can be read, but controls are not accessible and the `value` cannot be modified.                                                                                                                                                                                                                                       |boolean                 |TRUE                  |
#'  |referenceDate      |reference-date      |This `date` will be used as a reference to Daylight Savings Time when creating time zone item groups.  It can be either a Date instance or a string in ISO format (`"YYYY-MM-DD"`, `"YYYY-MM-DDTHH:MM:SS.SSSZ"`).                                                                                                                                           |Date &#124; string      |FALSE                 |
#'  |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                        |Scale                   |TRUE                  |
#'  |status             |status              |Specifies the input field's status, which determines message and icons.                                                                                                                                                                                                                                                                                     |Status                  |TRUE                  |
#'  |topLayerDisabled   |top-layer-disabled  |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                           |boolean                 |TRUE                  |
#'  |validationIcon     |validation-icon     |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                               |IconName &#124; boolean |TRUE                  |
#'  |validationMessage  |validation-message  |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                            |string                  |FALSE                 |
#'  |validity           |NA                  |The component's current validation state.                                                                                                                                                                                                                                                                                                                   |MutableValidityState    |FALSE                 |
#'  |value              |value               |The component's value, where the value is the time zone offset or the difference, in minutes, between the selected time zone and UTC.  If no value is provided, the user's time zone offset will be selected by default.                                                                                                                                    |string                  |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                           |Description                                                                                              |
#'  |:-------------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteInputTimeZoneBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteInputTimeZoneBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteInputTimeZoneChange      |Fires when the component's `value` changes.                                                              |
#'  |calciteInputTimeZoneClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteInputTimeZoneOpen        |Fires when the component is opened and animation is complete.                                            |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot          |Description                                                       |
#'  |:-------------|:-----------------------------------------------------------------|
#'  |label-content |A slot for rendering content next to the component's `labelText`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-time-zone/)
#' @examples
#' calcite_input_time_zone()
calcite_input_time_zone <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-input-time-zone",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ListItemGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name     |Attribute |Description                                                                              |Values  |Reflects to Attribute |
#'  |:--------|:---------|:----------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |disabled |disabled  |When `true`, interaction is prevented and the component is displayed with lower opacity. |boolean |TRUE                  |
#'  |heading  |heading   |Specifies the heading text for the nested `calcite-list-item` rows.                      |string  |TRUE                  |
#'  |scale    |scale     |Specifies the size of the component.                                                     |Scale   |TRUE                  |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                                   |
#'  |:-----------------|:-----------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-list-item` and `calcite-list-item-group` elements. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/list-item-group/)
#' @examples
#' calcite_list_item_group()
calcite_list_item_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-list-item-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Loader component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name   |Attribute |Description                                                                                                                                                                                                                                                |Values                                                          |Reflects to Attribute |
#'  |:------|:---------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------|:---------------------|
#'  |inline |inline    |When `true`, the component displays smaller.                                                                                                                                                                                                               |boolean                                                         |TRUE                  |
#'  |label  |label     |Specifies an accessible label for the component.                                                                                                                                                                                                           |string                                                          |FALSE                 |
#'  |scale  |scale     |Specifies the size of the component.                                                                                                                                                                                                                       |Scale                                                           |TRUE                  |
#'  |text   |text      |When not `inline`, displays text under the component's indicator.                                                                                                                                                                                          |string                                                          |FALSE                 |
#'  |type   |type      |Specifies the component type.  Use `"indeterminate"` if finding actual progress value is impossible. Otherwise, use `"determinate"` to have the value indicate the progress or `"determinate-value"` to have the value label displayed along the progress. |"indeterminate" &#124; "determinate" &#124; "determinate-value" |TRUE                  |
#'  |value  |value     |The component's value. Valid only for `"determinate"` indicators. Percent complete of 100.                                                                                                                                                                 |number                                                          |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/loader/)
#' @examples
#' calcite_loader()
calcite_loader <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-loader",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Menu component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute |Description                                         |Values              |Reflects to Attribute |
#'  |:----------------|:---------|:---------------------------------------------------|:-------------------|:---------------------|
#'  |label            |label     |Specifies an accessible label for the component.    |string              |FALSE                 |
#'  |layout           |layout    |Specifies the layout of the component.              |Layout              |TRUE                  |
#'  |messageOverrides |NA        |Overrides individual strings used by the component. |Check API reference |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/menu/)
#' @examples
#' calcite_menu()
calcite_menu <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-menu",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a MenuItem component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute     |Description                                                                                                 |Values              |Reflects to Attribute |
#'  |:----------------|:-------------|:-----------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |active           |active        |When `true`, the component is highlighted.                                                                  |boolean             |TRUE                  |
#'  |breadcrumb       |breadcrumb    |When `true`, the component displays a breadcrumb trail for use as a navigational aid.                       |boolean             |TRUE                  |
#'  |href             |href          |Specifies the URL destination of the component, which can be set as an absolute or relative path.           |string              |FALSE                 |
#'  |iconEnd          |icon-end      |Specifies an icon to display at the end of the component.                                                   |IconName            |TRUE                  |
#'  |iconFlipRtl      |icon-flip-rtl |Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`). |FlipContext         |TRUE                  |
#'  |iconStart        |icon-start    |Specifies an icon to display at the start of the component.                                                 |IconName            |TRUE                  |
#'  |label            |label         |Specifies an accessible label for the component.                                                            |string              |FALSE                 |
#'  |messageOverrides |NA            |Overrides individual strings used by the component.                                                         |Check API reference |FALSE                 |
#'  |open             |open          |When `true`, the component will display any slotted `calcite-menu-item` in an open overflow menu.           |boolean             |TRUE                  |
#'  |rel              |rel           |Defines the relationship between the `href` value and the current document.                                 |string              |TRUE                  |
#'  |target           |target        |Specifies where to open the linked document defined in the `href` property.                                 |string              |TRUE                  |
#'  |text             |text          |Specifies the text to display.                                                                              |string              |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                           |
#'  |:---------------------|:-------------------------------------|
#'  |calciteMenuItemSelect |Emits when the component is selected. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot         |Description                                          |
#'  |:------------|:----------------------------------------------------|
#'  |submenu-item |A slot for adding `calcite-menu-item`s in a submenu. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/menu-item/)
#' @examples
#' calcite_menu_item()
calcite_menu_item <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-menu-item",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Meter component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name            |Attribute        |Description                                                                                                                                                                   |Values              |Reflects to Attribute |
#'  |:---------------|:----------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |appearance      |appearance       |Specifies the appearance of the component.                                                                                                                                    |Check API reference |TRUE                  |
#'  |disabled        |disabled         |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                      |boolean             |TRUE                  |
#'  |fillType        |fill-type        |Specifies the component's display, where `"single"` displays a single color, and `"range"` displays a range of colors based on provided `low`, `high`, `min` or `max` values. |MeterFillType       |TRUE                  |
#'  |form            |form             |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists.                              |string              |TRUE                  |
#'  |groupSeparator  |group-separator  |When `true`, number values are displayed with a group separator corresponding to the language and country format.                                                             |boolean             |TRUE                  |
#'  |high            |high             |Specifies a high value.  When `fillType` is `"range"`, displays a different color when above the specified threshold.                                                         |number              |TRUE                  |
#'  |label           |label            |Specifies an accessible label for the component.                                                                                                                              |string              |FALSE                 |
#'  |low             |low              |Specifies a low value.  When `fillType` is `"range"`, displays a different color when above the specified threshold.                                                          |number              |TRUE                  |
#'  |max             |max              |Specifies the component's highest allowed value.                                                                                                                              |number              |TRUE                  |
#'  |min             |min              |Specifies the component's lowest allowed value.                                                                                                                               |number              |TRUE                  |
#'  |name            |name             |Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                             |string              |TRUE                  |
#'  |numberingSystem |numbering-system |Specifies the Unicode numeral system used by the component for localization.                                                                                                  |NumberingSystem     |FALSE                 |
#'  |rangeLabels     |range-labels     |When `true`, displays the values of `high`, `low`, `min`, and `max`.                                                                                                          |boolean             |TRUE                  |
#'  |rangeLabelType  |range-label-type |When `rangeLabels` is `true`, specifies the format of displayed labels.                                                                                                       |MeterLabelType      |TRUE                  |
#'  |scale           |scale            |Specifies the size of the component.                                                                                                                                          |Scale               |TRUE                  |
#'  |unitLabel       |unit-label       |When `rangeLabelType` is `"units"` and either `valueLabel` or `rangeLabels` are `true`, displays beside the `value` and/or  `min` values.                                     |string              |FALSE                 |
#'  |value           |value            |Specifies the component's value.                                                                                                                                              |number              |FALSE                 |
#'  |valueLabel      |value-label      |When `true`, displays the `value`.                                                                                                                                            |boolean             |TRUE                  |
#'  |valueLabelType  |value-label-type |When `valueLabel` is `true`, specifies the format of displayed label.                                                                                                         |MeterLabelType      |TRUE                  |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/meter/)
#' @examples
#' calcite_meter()
calcite_meter <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-meter",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Navigation component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute         |Description                                                                                              |Values  |Reflects to Attribute |
#'  |:----------------|:-----------------|:--------------------------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |label            |label             |When `navigationAction` is `true`, specifies an accessible label for the `calcite-action`.               |string  |FALSE                 |
#'  |navigationAction |navigation-action |When `true`, displays a `calcite-action` and emits a `calciteNavActionSelect` event on selection change. |boolean |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                         |Description                                                                           |
#'  |:-----------------------------|:-------------------------------------------------------------------------------------|
#'  |calciteNavigationActionSelect |When `navigationAction` is `true`, emits when the displayed action selection changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot                 |Description                                                                                                                                                                                        |
#'  |:--------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |logo                 |A slot for adding a `calcite-logo` component to the primary navigation level.                                                                                                                      |
#'  |user                 |A slot for adding a `calcite-user` component to the primary navigation level.                                                                                                                      |
#'  |progress             |A slot for adding a `calcite-progress` component to the primary navigation level.                                                                                                                  |
#'  |navigation-action    |A slot for adding a `calcite-action` component to the primary navigation level.                                                                                                                    |
#'  |content-start        |A slot for adding a `calcite-menu`, `calcite-action`, or other interactive elements in the start position of any navigation level.                                                                 |
#'  |content-center       |A slot for adding a `calcite-menu`, `calcite-action`, or other interactive elements in the center position of the primary navigation level.                                                        |
#'  |content-end          |A slot for adding a `calcite-menu`, `calcite-action`, or other interactive elements in the end position of any navigation level.                                                                   |
#'  |navigation-secondary |A slot for adding a `calcite-navigation` component in the secondary navigation level. Components rendered here will not display `calcite-navigation-logo` or `calcite-navigation-user` components. |
#'  |navigation-tertiary  |A slot for adding a `calcite-navigation` component in the tertiary navigation level.  Components rendered here will not display `calcite-navigation-logo` or `calcite-navigation-user` components. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation/)
#' @examples
#' calcite_navigation()
calcite_navigation <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-navigation",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a NavigationLogo component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name         |Attribute     |Description                                                                                                                      |Values       |Reflects to Attribute |
#'  |:------------|:-------------|:--------------------------------------------------------------------------------------------------------------------------------|:------------|:---------------------|
#'  |active       |active        |When `true`, the component is highlighted.                                                                                       |boolean      |TRUE                  |
#'  |description  |description   |Specifies a description for the component. Displays below the `heading`.                                                         |string       |FALSE                 |
#'  |heading      |heading       |Specifies the component's heading text.                                                                                          |string       |FALSE                 |
#'  |headingLevel |heading-level |Specifies the heading level number of the component's `heading` for proper document structure, without affecting visual styling. |HeadingLevel |TRUE                  |
#'  |href         |href          |Specifies the URL destination of the component, which can be set as an absolute or relative path.                                |string       |TRUE                  |
#'  |icon         |icon          |Specifies an icon to display.                                                                                                    |IconName     |TRUE                  |
#'  |iconFlipRtl  |icon-flip-rtl |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                     |boolean      |TRUE                  |
#'  |label        |label         |Specifies an accessible label for the component.                                                                                 |string       |FALSE                 |
#'  |rel          |rel           |Defines the relationship between the `href` value and the current document.                                                      |string       |TRUE                  |
#'  |target       |target        |Specifies where to open the linked document defined in the `href` property.                                                      |string       |TRUE                  |
#'  |thumbnail    |thumbnail     |Specifies the `src` to an image.                                                                                                 |string       |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation-logo/)
#' @examples
#' calcite_navigation_logo()
calcite_navigation_logo <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-navigation-logo",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a NavigationUser component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name         |Attribute     |Description                                                                       |Values  |Reflects to Attribute |
#'  |:------------|:-------------|:---------------------------------------------------------------------------------|:-------|:---------------------|
#'  |active       |active        |When `true`, the component is highlighted.                                        |boolean |TRUE                  |
#'  |fullName     |full-name     |Specifies the full name of the user.                                              |string  |FALSE                 |
#'  |label        |label         |Specifies an accessible label for the component.                                  |string  |FALSE                 |
#'  |textDisabled |text-disabled |When `true`, hides the `fullName` and `username` contents.                        |boolean |TRUE                  |
#'  |thumbnail    |thumbnail     |Specifies the `src` to an image (remember to add a token if the user is private). |string  |FALSE                 |
#'  |userId       |user-id       |Specifies the unique id of the user.                                              |string  |FALSE                 |
#'  |username     |username      |Specifies the username of the user.                                               |string  |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation-user/)
#' @examples
#' calcite_navigation_user()
calcite_navigation_user <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-navigation-user",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a OptionGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name     |Attribute |Description                                                                              |Values  |Reflects to Attribute |
#'  |:--------|:---------|:----------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |disabled |disabled  |When `true`, interaction is prevented and the component is displayed with lower opacity. |boolean |TRUE                  |
#'  |label    |label     |Specifies an accessible label for the component.                                         |string  |FALSE                 |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                          |
#'  |:-----------------|:------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-option`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/option-group/)
#' @examples
#' calcite_option_group()
calcite_option_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-option-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Pagination component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute        |Description                                                                                                       |Values              |Reflects to Attribute |
#'  |:----------------|:----------------|:-----------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |groupSeparator   |group-separator  |When `true`, number values are displayed with a group separator corresponding to the language and country format. |boolean             |TRUE                  |
#'  |messageOverrides |NA               |Overrides individual strings used by the component.                                                               |Check API reference |FALSE                 |
#'  |numberingSystem  |numbering-system |Specifies the Unicode numeral system used by the component for localization.                                      |NumberingSystem     |FALSE                 |
#'  |pageSize         |page-size        |Specifies the number of items per page.                                                                           |number              |TRUE                  |
#'  |scale            |scale            |Specifies the size of the component.                                                                              |Scale               |TRUE                  |
#'  |startItem        |start-item       |Specifies the starting item number.                                                                               |number              |TRUE                  |
#'  |totalItems       |total-items      |Specifies the total number of items.                                                                              |number              |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                   |Description                           |
#'  |:-----------------------|:-------------------------------------|
#'  |calcitePaginationChange |Emits when the selected page changes. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/pagination/)
#' @examples
#' calcite_pagination()
calcite_pagination <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-pagination",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Popover component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |Values                         |Reflects to Attribute |
#'  |:------------------|:-------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------|:---------------------|
#'  |autoClose          |auto-close          |When `true`, clicking outside of the component automatically closes open `calcite-popover`s.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |boolean                        |TRUE                  |
#'  |closable           |closable            |When `true`, displays a close button in the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |boolean                        |TRUE                  |
#'  |flipDisabled       |flip-disabled       |When `true`, prevents flipping the component's placement when overlapping its `referenceElement`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |boolean                        |TRUE                  |
#'  |flipPlacements     |NA                  |Specifies the component's fallback `placement` for slotted content when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |Check API reference            |FALSE                 |
#'  |focusTrapDisabled  |focus-trap-disabled |When `true`, prevents focus trapping.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |boolean                        |TRUE                  |
#'  |focusTrapOptions   |NA                  |Specifies custom focus trap configuration on the component, where  `"allowOutsideClick`" allows outside clicks, `"initialFocus"` enables initial focus, `"returnFocusOnDeactivate"` returns focus when not active, `"extraContainers"` specifies additional focusable elements external to the trap, such as 3rd-party components appending elements to the document body, and `"setReturnFocus"` customizes the element to which focus is returned when the trap is deactivated. Return `false` to prevent focus return, or `undefined` to use the default behavior (returning focus to the element focused before activation). |Check API reference            |FALSE                 |
#'  |heading            |heading             |Specifies the component's heading text.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |string                         |FALSE                 |
#'  |headingLevel       |heading-level       |Specifies the heading level number of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |HeadingLevel                   |TRUE                  |
#'  |label              |label               |Specifies an accessible label for the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |string                         |FALSE                 |
#'  |messageOverrides   |NA                  |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |Check API reference            |FALSE                 |
#'  |offsetDistance     |offset-distance     |Specifies the distance to position the component away from the `referenceElement`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |number                         |TRUE                  |
#'  |offsetSkidding     |offset-skidding     |Specifies the distance to position the component along the `referenceElement`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |number                         |TRUE                  |
#'  |open               |open                |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |boolean                        |TRUE                  |
#'  |overlayPositioning |overlay-positioning |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`.                                                                                                                                                                                                                                                                      |OverlayPositioning             |TRUE                  |
#'  |placement          |placement           |Determines where the component will be positioned relative to the `referenceElement`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |LogicalPlacement               |TRUE                  |
#'  |pointerDisabled    |pointer-disabled    |When `true`, removes the caret pointer.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |boolean                        |TRUE                  |
#'  |referenceElement   |reference-element   |The `referenceElement` is used to position the component according to its `placement` value.  Setting the value to an `HTMLElement` is preferred so the component does not need to query the DOM.  However, a string `id` of the reference element can also be used.  The component should not be placed within its own `referenceElement` to avoid unintended behavior.                                                                                                                                                                                                                                                         |ReferenceElement &#124; string |FALSE                 |
#'  |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |Scale                          |TRUE                  |
#'  |topLayerDisabled   |top-layer-disabled  |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                                                                                                                                                                                                                                                                                                |boolean                        |TRUE                  |
#'  |triggerDisabled    |trigger-disabled    |When `true`, disables automatically toggling the component when its `referenceElement` has been triggered.  This property can be set to `true` to manage when the component is open.                                                                                                                                                                                                                                                                                                                                                                                                                                             |boolean                        |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                     |Description                                                                                              |
#'  |:-------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calcitePopoverBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calcitePopoverBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calcitePopoverClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calcitePopoverOpen        |Fires when the component is open and animation is complete.                                              |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding custom content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/popover/)
#' @examples
#' calcite_popover()
calcite_popover <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-popover",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Progress component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name     |Attribute |Description                                                                                          |Values                               |Reflects to Attribute |
#'  |:--------|:---------|:----------------------------------------------------------------------------------------------------|:------------------------------------|:---------------------|
#'  |label    |label     |Specifies an accessible label for the component.                                                     |string                               |FALSE                 |
#'  |reversed |reversed  |When `true` and type is `"indeterminate"`, reverses the animation direction.                         |boolean                              |TRUE                  |
#'  |text     |text      |Text that displays under the component's indicator.                                                  |string                               |FALSE                 |
#'  |type     |type      |Specifies the component type.  Use `"indeterminate"` if finding actual progress value is impossible. |"indeterminate" &#124; "determinate" |TRUE                  |
#'  |value    |value     |When `type` is `"determinate"`, specifies the component's value with a range of 0 to 100.            |number                               |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/progress/)
#' @examples
#' calcite_progress()
calcite_progress <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-progress",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a RadioButton component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name      |Attribute  |Description                                                                                                                                                      |Values  |Reflects to Attribute |
#'  |:---------|:----------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |checked   |checked    |When `true`, the component is checked.                                                                                                                           |boolean |TRUE                  |
#'  |disabled  |disabled   |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                         |boolean |TRUE                  |
#'  |form      |form       |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists.                 |string  |TRUE                  |
#'  |labelText |label-text |Specifies the component's label text.                                                                                                                            |string  |FALSE                 |
#'  |name      |name       |Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                |string  |TRUE                  |
#'  |required  |required   |When `true` and the component resides in a form, the component must have a value selected from the `calcite-radio-button-group` in order for the form to submit. |boolean |TRUE                  |
#'  |scale     |scale      |Specifies the size of the component inherited from the `calcite-radio-button-group`.                                                                             |Scale   |TRUE                  |
#'  |value     |value      |The component's value.                                                                                                                                           |any     |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
#'  |:------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |calciteRadioButtonChange |Fires only when the radio button is checked.  This behavior is identical to the native HTML input element. Since this event does not fire when the radio button is unchecked, it's not recommended to attach a listener for this event directly on the element, but instead either attach it to a node that contains all of the radio buttons in the group or use the `calciteRadioButtonGroupChange` event if using this with `calcite-radio-button-group`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/radio-button/)
#' @examples
#' calcite_radio_button()
calcite_radio_button <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-radio-button",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a RadioButtonGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name              |Attribute          |Description                                                                                                       |Values                  |Reflects to Attribute |
#'  |:-----------------|:------------------|:-----------------------------------------------------------------------------------------------------------------|:-----------------------|:---------------------|
#'  |disabled          |disabled           |When `true`, interaction is prevented and the component is displayed with lower opacity.                          |boolean                 |TRUE                  |
#'  |labelText         |label-text         |Specifies the component's label text.                                                                             |string                  |FALSE                 |
#'  |layout            |layout             |Specifies the layout of the component.                                                                            |Check API reference     |TRUE                  |
#'  |messageOverrides  |NA                 |Overrides individual strings used by the component.                                                               |Check API reference     |FALSE                 |
#'  |name              |name               |Specifies the name of the component. Required to pass the component's `value` on form submission.                 |string                  |TRUE                  |
#'  |required          |required           |When `true` and the component resides in a form, the component must have a value in order for the form to submit. |boolean                 |TRUE                  |
#'  |scale             |scale              |Specifies the size of the component.                                                                              |Scale                   |TRUE                  |
#'  |selectedItem      |NA                 |Specifies the component's selected item.                                                                          |RadioButton             |FALSE                 |
#'  |status            |status             |Specifies the status of the validation message.                                                                   |Status                  |TRUE                  |
#'  |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                     |IconName &#124; boolean |TRUE                  |
#'  |validationMessage |validation-message |Specifies the validation message to display under the component.                                                  |string                  |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                         |Description                           |
#'  |:-----------------------------|:-------------------------------------|
#'  |calciteRadioButtonGroupChange |Fires when the component has changed. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                       |
#'  |:-----------------|:-----------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-radio-button`s.                        |
#'  |label-content     |A slot for rendering content next to the component's `labelText`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/radio-button-group/)
#' @examples
#' calcite_radio_button_group()
calcite_radio_button_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-radio-button-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Rating component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name              |Attribute          |Description                                                                                                                                      |Values                  |Reflects to Attribute |
#'  |:-----------------|:------------------|:------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|:---------------------|
#'  |average           |average            |Specifies a cumulative average from previous ratings to display.                                                                                 |number                  |TRUE                  |
#'  |count             |count              |Specifies the number of previous ratings to display.                                                                                             |number                  |TRUE                  |
#'  |disabled          |disabled           |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                         |boolean                 |TRUE                  |
#'  |form              |form               |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists. |string                  |TRUE                  |
#'  |labelText         |label-text         |Specifies the component's label text.                                                                                                            |string                  |FALSE                 |
#'  |messageOverrides  |NA                 |Overrides individual strings used by the component.                                                                                              |Check API reference     |FALSE                 |
#'  |name              |name               |Specifies the name of the component. Required to pass the component's `value` on form submission.                                                |string                  |TRUE                  |
#'  |readOnly          |read-only          |When `true`, the component's value can be read, but cannot be modified.                                                                          |boolean                 |TRUE                  |
#'  |scale             |scale              |Specifies the size of the component.                                                                                                             |Scale                   |TRUE                  |
#'  |showChip          |show-chip          |When `true`, and if available, displays the `average` and/or `count` data summary in a `calcite-chip`.                                           |boolean                 |TRUE                  |
#'  |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                     |Status                  |TRUE                  |
#'  |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                    |IconName &#124; boolean |TRUE                  |
#'  |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                 |string                  |FALSE                 |
#'  |validity          |NA                 |The component's current validation state.                                                                                                        |MutableValidityState    |FALSE                 |
#'  |value             |value              |The component's value.                                                                                                                           |number                  |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event               |Description                               |
#'  |:-------------------|:-----------------------------------------|
#'  |calciteRatingChange |Fires when the component's value changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot          |Description                                                       |
#'  |:-------------|:-----------------------------------------------------------------|
#'  |label-content |A slot for rendering content next to the component's `labelText`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/rating/)
#' @examples
#' calcite_rating()
calcite_rating <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-rating",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Scrim component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute |Description                                         |Values              |Reflects to Attribute |
#'  |:----------------|:---------|:---------------------------------------------------|:-------------------|:---------------------|
#'  |loading          |loading   |When `true`, a busy indicator is displayed.         |boolean             |TRUE                  |
#'  |messageOverrides |NA        |Overrides individual strings used by the component. |Check API reference |FALSE                 |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                      |
#'  |:-----------------|:----------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding custom content, primarily loading information. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/scrim/)
#' @examples
#' calcite_scrim()
calcite_scrim <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-scrim",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Sheet component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name                 |Attribute              |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |Values              |Reflects to Attribute |
#'  |:--------------------|:----------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |beforeClose          |NA                     |Passes a function to run before the component closes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |Check API reference |FALSE                 |
#'  |displayMode          |display-mode           |Specifies the display mode - `"float"` separates content from main layout, and `"overlay"` displays on top of center content.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |DisplayMode         |TRUE                  |
#'  |escapeDisabled       |escape-disabled        |When `true`, disables the default close on escape behavior.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |boolean             |TRUE                  |
#'  |focusTrapDisabled    |focus-trap-disabled    |When `true`, prevents focus trapping.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |boolean             |TRUE                  |
#'  |focusTrapOptions     |NA                     |Specifies custom focus trap configuration on the component, where  `"allowOutsideClick"` allows outside clicks, `"initialFocus"` enables initial focus, `"returnFocusOnDeactivate"` returns focus when not active, `"extraContainers"` specifies additional focusable elements external to the trap, such as 3rd-party components appending elements to the document body, and `"setReturnFocus"` customizes the element to which focus is returned when the trap is deactivated. Return `false` to prevent focus return, or `undefined` to use the default behavior (returning focus to the element focused before activation). |Check API reference |FALSE                 |
#'  |height               |height                 |Specifies the component's height.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |Height              |TRUE                  |
#'  |heightScale          |height-scale           |When `position` is `"block-start"` or `"block-end"`, specifies the component's height.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |Scale               |TRUE                  |
#'  |label                |label                  |Specifies an accessible label for the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |string              |FALSE                 |
#'  |messageOverrides     |NA                     |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |Check API reference |FALSE                 |
#'  |open                 |open                   |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |boolean             |TRUE                  |
#'  |outsideCloseDisabled |outside-close-disabled |When `true`, disables closing the component when the area outside of the component is clicked.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |boolean             |TRUE                  |
#'  |position             |position               |Determines where the component will be positioned.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |LogicalFlowPosition |TRUE                  |
#'  |resizable            |resizable              |When `true`, the component is resizable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |boolean             |TRUE                  |
#'  |topLayerDisabled     |top-layer-disabled     |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                                                                                                                                                                                                                                                                                                |boolean             |TRUE                  |
#'  |width                |width                  |Specifies the component's width.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |Check API reference |TRUE                  |
#'  |widthScale           |width-scale            |When `position` is `"inline-start"` or `"inline-end"`, specifies the component's width.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |Scale               |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                   |Description                                                                                              |
#'  |:-----------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteSheetBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteSheetBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteSheetClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteSheetOpen        |Fires when the component is open and animation is complete.                                              |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding custom content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/sheet/)
#' @examples
#' calcite_sheet()
calcite_sheet <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-sheet",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ShellPanel component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute    |Description                                                                                                |Values              |Reflects to Attribute |
#'  |:----------------|:------------|:----------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |collapsed        |collapsed    |When `true`, hides the component's content area.                                                           |boolean             |TRUE                  |
#'  |displayMode      |display-mode |Check API reference                                                                                        |DisplayMode         |TRUE                  |
#'  |height           |height       |Specifies the component's height.                                                                          |Height              |TRUE                  |
#'  |heightScale      |height-scale |When `layout` is `horizontal`, specifies the component's maximum height.                                   |Scale               |TRUE                  |
#'  |layout           |layout       |Specifies the component's direction.                                                                       |Check API reference |TRUE                  |
#'  |messageOverrides |NA           |Overrides individual strings used by the component.                                                        |Check API reference |FALSE                 |
#'  |position         |position     |Specifies the component's position. Will be flipped when the element direction is right-to-left (`"rtl"`). |Check API reference |TRUE                  |
#'  |resizable        |resizable    |When `true` and `displayMode` is `"dock"` or `"overlay"`, the component's content area is resizable.       |boolean             |TRUE                  |
#'  |width            |width        |Specifies the component's width.                                                                           |Check API reference |TRUE                  |
#'  |widthScale       |width-scale  |When `layout` is `vertical`, specifies the component's width.                                              |Scale               |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                     |Description                                           |
#'  |:-------------------------|:-----------------------------------------------------|
#'  |calciteShellPanelCollapse |Fires when the component's content area is collapsed. |
#'  |calciteShellPanelExpand   |Fires when the component's content area is expanded.  |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                |
#'  |:-----------------|:----------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding custom content.                          |
#'  |action-bar        |A slot for adding a `calcite-action-bar` to the component. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/shell-panel/)
#' @examples
#' calcite_shell_panel()
calcite_shell_panel <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-shell-panel",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a SplitButton component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name               |Attribute             |Description                                                                                                                                                                                                                                                                                                                                                 |Values                |Reflects to Attribute |
#'  |:------------------|:---------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|:---------------------|
#'  |appearance         |appearance            |Specifies the appearance style of the component.                                                                                                                                                                                                                                                                                                            |Check API reference   |TRUE                  |
#'  |disabled           |disabled              |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                    |boolean               |TRUE                  |
#'  |download           |download              |Prompts the user to save the linked URL instead of navigating to it. Can be used with or without a value: Without a value, the browser will suggest a filename/extension.                                                                                                                                                                                   |string &#124; boolean |TRUE                  |
#'  |dropdownIconType   |dropdown-icon-type    |Specifies the icon used for the dropdown menu.                                                                                                                                                                                                                                                                                                              |DropdownIconType      |TRUE                  |
#'  |dropdownLabel      |dropdown-label        |Accessible name for the dropdown menu.                                                                                                                                                                                                                                                                                                                      |string                |TRUE                  |
#'  |flipPlacements     |NA                    |Specifies the component's fallback `placement` for slotted content when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                             |Check API reference   |FALSE                 |
#'  |href               |href                  |Specifies the URL of the linked resource, which can be set as an absolute or relative path.                                                                                                                                                                                                                                                                 |string                |TRUE                  |
#'  |kind               |kind                  |Specifies the kind of the component, which will apply to border and background, if applicable.                                                                                                                                                                                                                                                              |Check API reference   |TRUE                  |
#'  |loading            |loading               |When `true`, a busy indicator is displayed on the primary button.                                                                                                                                                                                                                                                                                           |boolean               |TRUE                  |
#'  |overlayPositioning |overlay-positioning   |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |OverlayPositioning    |TRUE                  |
#'  |placement          |placement             |Determines where the component will be positioned relative to the container element.                                                                                                                                                                                                                                                                        |MenuPlacement         |TRUE                  |
#'  |primaryIconEnd     |primary-icon-end      |Specifies an icon to display at the end of the primary button.                                                                                                                                                                                                                                                                                              |IconName              |TRUE                  |
#'  |primaryIconFlipRtl |primary-icon-flip-rtl |Displays the `primaryIconStart` and/or `primaryIconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                                                                                                                                                                                                   |FlipContext           |TRUE                  |
#'  |primaryIconStart   |primary-icon-start    |Specifies an icon to display at the start of the primary button.                                                                                                                                                                                                                                                                                            |IconName              |TRUE                  |
#'  |primaryLabel       |primary-label         |Speficies an accessible name for the primary button.                                                                                                                                                                                                                                                                                                        |string                |TRUE                  |
#'  |primaryText        |primary-text          |Specifies the text displayed in the primary button.                                                                                                                                                                                                                                                                                                         |string                |TRUE                  |
#'  |rel                |rel                   |Defines the relationship between the `href` value and the current document.                                                                                                                                                                                                                                                                                 |string                |TRUE                  |
#'  |scale              |scale                 |Specifies the component's size.                                                                                                                                                                                                                                                                                                                             |Scale                 |TRUE                  |
#'  |target             |target                |Specifies where to open the linked document defined in the `href` property.                                                                                                                                                                                                                                                                                 |string                |TRUE                  |
#'  |topLayerDisabled   |top-layer-disabled    |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                           |boolean               |TRUE                  |
#'  |width              |width                 |Check API reference                                                                                                                                                                                                                                                                                                                                         |Check API reference   |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                            |Description                               |
#'  |:--------------------------------|:-----------------------------------------|
#'  |calciteSplitButtonPrimaryClick   |Fires when the primary button is clicked. |
#'  |calciteSplitButtonSecondaryClick |Fires when the dropdown menu is clicked.  |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                   |
#'  |:-----------------|:---------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-dropdown` content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/split-button/)
#' @examples
#' calcite_split_button()
calcite_split_button <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-split-button",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Stepper component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute        |Description                                                                  |Values                           |Reflects to Attribute |
#'  |:----------------|:----------------|:----------------------------------------------------------------------------|:--------------------------------|:---------------------|
#'  |icon             |icon             |When `true`, displays a status icon in the `calcite-stepper-item` heading.   |boolean                          |TRUE                  |
#'  |layout           |layout           |Defines the component's layout.                                              |StepperLayout                    |TRUE                  |
#'  |messageOverrides |NA               |Overrides individual strings used by the component.                          |Check API reference              |FALSE                 |
#'  |numbered         |numbered         |When `true`, displays the step number in the `calcite-stepper-item` heading. |boolean                          |TRUE                  |
#'  |numberingSystem  |numbering-system |Specifies the Unicode numeral system used by the component for localization. |NumberingSystem &#124; undefined |TRUE                  |
#'  |scale            |scale            |Specifies the component's size.                                              |Scale                            |TRUE                  |
#'  |selectedItem     |NA               |Specifies the component's selected item.                                     |StepperItem                      |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                |Description                                           |
#'  |:--------------------|:-----------------------------------------------------|
#'  |calciteStepperChange |Fires when the active `calcite-stepper-item` changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                |
#'  |:-----------------|:------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-stepper-item`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/stepper/)
#' @examples
#' calcite_stepper()
calcite_stepper <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-stepper",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a StepperItem component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute     |Description                                                                                  |Values              |Reflects to Attribute |
#'  |:----------------|:-------------|:--------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |complete         |complete      |When `true`, completes the step.                                                             |boolean             |TRUE                  |
#'  |description      |description   |Specifies a description for the component. Displays below the header text.                   |string              |FALSE                 |
#'  |disabled         |disabled      |When `true`, prevents interaction and decreases the component's opacity.                     |boolean             |TRUE                  |
#'  |error            |error         |When `true`, the component contains an error that requires resolution from the user.         |boolean             |TRUE                  |
#'  |heading          |heading       |Specifies the component's heading text.                                                      |string              |FALSE                 |
#'  |iconFlipRtl      |icon-flip-rtl |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). |boolean             |TRUE                  |
#'  |messageOverrides |NA            |Overrides individual strings used by the component.                                          |Check API reference |FALSE                 |
#'  |selected         |selected      |When `true`, the component is selected.                                                      |boolean             |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                           |
#'  |:------------------------|:-----------------------------------------------------|
#'  |calciteStepperItemSelect |Fires when the active `calcite-stepper-item` changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding custom content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/stepper-item/)
#' @examples
#' calcite_stepper_item()
calcite_stepper_item <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-stepper-item",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Swatch component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name     |Attribute |Description                                                                                                                           |Values  |Reflects to Attribute |
#'  |:--------|:---------|:-------------------------------------------------------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |color    |color     |Specifies the component's color                                                                                                       |string  |FALSE                 |
#'  |disabled |disabled  |When `true`, interaction is prevented and the component is displayed with lower opacity.                                              |boolean |TRUE                  |
#'  |label    |label     |Specifies an accessible label for the component.                                                                                      |string  |FALSE                 |
#'  |scale    |scale     |Specifies the component's size. When contained in a parent `calcite-swatch-group`, the component inherits the parent's `scale` value. |Scale   |TRUE                  |
#'  |selected |selected  |When `true`, the component is selected.                                                                                               |boolean |TRUE                  |
#'  |value    |value     |The component's value.                                                                                                                |any     |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event               |Description                                             |
#'  |:-------------------|:-------------------------------------------------------|
#'  |calciteSwatchSelect |Fires when the selected state of the component changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot  |Description                            |
#'  |:-----|:--------------------------------------|
#'  |image |A slot for adding an image or pattern. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/swatch/)
#' @examples
#' calcite_swatch()
calcite_swatch <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-swatch",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a SwatchGroup component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name          |Attribute      |Description                                                                                                                                                                                                                                                  |Values              |Reflects to Attribute |
#'  |:-------------|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |disabled      |disabled       |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                     |boolean             |TRUE                  |
#'  |label         |label          |Specifies an accessible label for the component.                                                                                                                                                                                                             |string              |FALSE                 |
#'  |scale         |scale          |Specifies the component's size. Child `calcite-swatch`s inherit the component's value.                                                                                                                                                                       |Scale               |TRUE                  |
#'  |selectedItems |NA             |Specifies the component's selected items.                                                                                                                                                                                                                    |Check API reference |FALSE                 |
#'  |selectionMode |selection-mode |Specifies the selection mode of the component, where:  `"multiple"` allows any number of selections,  `"single"` allows only one selection,  `"single-persist"` allows one selection and prevents de-selection, and  `"none"` does not allow any selections. |Check API reference |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                   |
#'  |:------------------------|:---------------------------------------------|
#'  |calciteSwatchGroupSelect |Fires when the component's selection changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                      |
#'  |:-----------------|:------------------------------------------------|
#'  |Default (unnamed) |A slot for adding one or more `calcite-swatch`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/swatch-group/)
#' @examples
#' calcite_swatch_group()
calcite_swatch_group <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-swatch-group",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Tab component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name     |Attribute |Description                                                                                                |Values  |Reflects to Attribute |
#'  |:--------|:---------|:----------------------------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |selected |selected  |When `true`, the component is selected.  Only one tab can be selected within the `calcite-tabs` parent.    |boolean |TRUE                  |
#'  |tab      |tab       |Specifies a unique name for the component.  When specified, use the same value on the `calcite-tab-title`. |string  |TRUE                  |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding custom content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tab/)
#' @examples
#' calcite_tab()
calcite_tab <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-tab",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TabNav component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute  |Description                                                                                                                                                                    |Values              |Reflects to Attribute |
#'  |:----------------|:----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |messageOverrides |NA         |Overrides individual strings used by the component.                                                                                                                            |Check API reference |FALSE                 |
#'  |position         |position   |Specifies the position of `calcite-tab-nav` and `calcite-tab-title` components in relation to, and is inherited from the parent `calcite-tabs`, defaults to `top`.   @internal |TabPosition         |FALSE                 |
#'  |selectedTitle    |NA         |Specifies the component's selected `calcite-tab-title`.                                                                                                                        |TabTitle            |FALSE                 |
#'  |storageId        |storage-id |Specifies the name when saving selected `calcite-tab` data to `localStorage`.                                                                                                  |string              |TRUE                  |
#'  |syncId           |sync-id    |Specifies text to update multiple components to keep in sync if one changes.                                                                                                   |string              |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event            |Description                                    |
#'  |:----------------|:----------------------------------------------|
#'  |calciteTabChange |Emits when the selected `calcite-tab` changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                             |
#'  |:-----------------|:---------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-tab-title`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tab-nav/)
#' @examples
#' calcite_tab_nav()
calcite_tab_nav <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-tab-nav",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TabTitle component
#'
#' 
#'
#' Tab-titles are optionally individually closable.
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute     |Description                                                                                                                                                                    |Values              |Reflects to Attribute |
#'  |:----------------|:-------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |closable         |closable      |When `true`, displays a close button in the component.                                                                                                                         |boolean             |TRUE                  |
#'  |closed           |closed        |When `true`, hides the component.                                                                                                                                              |boolean             |TRUE                  |
#'  |disabled         |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                       |boolean             |TRUE                  |
#'  |iconEnd          |icon-end      |Specifies an icon to display at the end of the component.                                                                                                                      |IconName            |TRUE                  |
#'  |iconFlipRtl      |icon-flip-rtl |Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                                    |FlipContext         |TRUE                  |
#'  |iconStart        |icon-start    |Specifies an icon to display at the start of the component.                                                                                                                    |IconName            |TRUE                  |
#'  |messageOverrides |NA            |Overrides individual strings used by the component.                                                                                                                            |Check API reference |FALSE                 |
#'  |position         |position      |Specifies the position of `calcite-tab-nav` and `calcite-tab-title` components in relation to, and is inherited from the parent `calcite-tabs`, defaults to `top`.   @internal |TabPosition         |FALSE                 |
#'  |selected         |selected      |When `true`, the component and its respective `calcite-tab` contents are selected.  Only one tab can be selected within the `calcite-tabs` parent.                             |boolean             |TRUE                  |
#'  |tab              |tab           |Specifies a unique name for the component.  When specified, use the same value on the `calcite-tab`.                                                                           |string              |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event               |Description                             |
#'  |:-------------------|:---------------------------------------|
#'  |calciteTabsActivate |Fires when a `calcite-tab` is selected. |
#'  |calciteTabsClose    |Fires when a `calcite-tab` is closed.   |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description             |
#'  |:-----------------|:-----------------------|
#'  |Default (unnamed) |A slot for adding text. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tab-title/)
#' @examples
#' calcite_tab_title()
calcite_tab_title <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-tab-title",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Table component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute         |Description                                                                                                                                                                                                                                                                                                                 |Values                           |Reflects to Attribute |
#'  |:----------------|:-----------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------|:---------------------|
#'  |bordered         |bordered          |When `true`, displays borders between `calcite-table-rows`.                                                                                                                                                                                                                                                                 |boolean                          |TRUE                  |
#'  |caption          |caption           |Specifies an accessible title for the component.                                                                                                                                                                                                                                                                            |string                           |FALSE                 |
#'  |currentPage      |current-page      |Sets/gets the current page                                                                                                                                                                                                                                                                                                  |number                           |TRUE                  |
#'  |groupSeparator   |group-separator   |When `true`, number values are displayed with a group separator corresponding to the language and country format.                                                                                                                                                                                                           |boolean                          |TRUE                  |
#'  |interactionMode  |interaction-mode  |When `"interactive"`, allows focus and keyboard navigation of `table-header`s and `table-cell`s.  When `"static"`, prevents focus and keyboard navigation of `table-header`s and `table-cell`s when assistive technologies are not active. Selection affordances and slotted content within `table-cell`s remain focusable. |TableInteractionMode             |TRUE                  |
#'  |layout           |layout            |Specifies the layout of the component.                                                                                                                                                                                                                                                                                      |TableLayout                      |TRUE                  |
#'  |messageOverrides |NA                |Overrides individual strings used by the component.                                                                                                                                                                                                                                                                         |Check API reference              |FALSE                 |
#'  |numbered         |numbered          |When `true`, displays the position of the row in numeric form.                                                                                                                                                                                                                                                              |boolean                          |TRUE                  |
#'  |numberingSystem  |numbering-system  |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                                                                                                                                |NumberingSystem &#124; undefined |TRUE                  |
#'  |pageSize         |page-size         |Specifies the page size of the component. When present, renders `calcite-pagination`.                                                                                                                                                                                                                                       |number                           |TRUE                  |
#'  |scale            |scale             |Specifies the component's size.                                                                                                                                                                                                                                                                                             |Scale                            |TRUE                  |
#'  |selectedItems    |NA                |Specifies the component's selected items.                                                                                                                                                                                                                                                                                   |Check API reference              |FALSE                 |
#'  |selectionDisplay |selection-display |When `selectionMode` is `"single"` or `"multiple"`, specifies the display of the selection interface. When  `selectionMode` is `"none"`, content slotted in the `selection-actions` slot will not be displayed.                                                                                                             |TableSelectionDisplay            |TRUE                  |
#'  |selectionMode    |selection-mode    |Specifies the selection mode of the component, where:  `"multiple"` allows any number of selections,  `"single"` allows only one selection, and  `"none"` does not allow any selections.                                                                                                                                    |Check API reference              |TRUE                  |
#'  |striped          |striped           |When `true`, displays striped styling on the component's `calcite-table-rows`.                                                                                                                                                                                                                                              |boolean                          |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                  |Description                                        |
#'  |:----------------------|:--------------------------------------------------|
#'  |calciteTablePageChange |Emits when the component's page selection changes. |
#'  |calciteTableSelect     |Emits when the component's selected rows change.   |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                                                                                                   |
#'  |:-----------------|:---------------------------------------------------------------------------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-table-row` elements containing `calcite-table-cell` and/or `calcite-table-header` elements.                        |
#'  |table-header      |A slot for adding `calcite-table-row` elements containing `calcite-table-header` elements.                                                    |
#'  |table-footer      |A slot for adding `calcite-table-row` elements containing `calcite-table-cell` and/or `calcite-table-header` elements.                        |
#'  |selection-actions |A slot for adding `calcite-actions` or other elements to display when `selectionMode` is not `"none"` and `selectionDisplay` is not `"none"`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/table/)
#' @examples
#' calcite_table()
calcite_table <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-table",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TableCell component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute |Description                                                |Values              |Reflects to Attribute |
#'  |:----------------|:---------|:----------------------------------------------------------|:-------------------|:---------------------|
#'  |alignment        |alignment |Specifies the alignment of the component.                  |Alignment           |TRUE                  |
#'  |colSpan          |col-span  |Specifies the number of columns the component should span. |number              |TRUE                  |
#'  |messageOverrides |NA        |Overrides individual strings used by the component.        |Check API reference |FALSE                 |
#'  |rowSpan          |row-span  |Specifies the number of rows the component should span.    |number              |TRUE                  |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                      |
#'  |:-----------------|:------------------------------------------------|
#'  |Default (unnamed) |A slot for adding content, usually text content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/table-cell/)
#' @examples
#' calcite_table_cell()
calcite_table_cell <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-table-cell",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TableHeader component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute   |Description                                                               |Values              |Reflects to Attribute |
#'  |:----------------|:-----------|:-------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |alignment        |alignment   |Specifies the alignment of the component.                                 |Alignment           |TRUE                  |
#'  |colSpan          |col-span    |Specifies the number of columns the component should span.                |number              |TRUE                  |
#'  |description      |description |Specifies a description for the component. Displays below the `heading`.  |string              |TRUE                  |
#'  |heading          |heading     |Specifies the component's heading text. Displays above the `description`. |string              |TRUE                  |
#'  |messageOverrides |NA          |Overrides individual strings used by the component.                       |Check API reference |FALSE                 |
#'  |rowSpan          |row-span    |Specifies the number of rows the component should span.                   |number              |TRUE                  |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/table-header/)
#' @examples
#' calcite_table_header()
calcite_table_header <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-table-header",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TableRow component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name      |Attribute |Description                                                                              |Values    |Reflects to Attribute |
#'  |:---------|:---------|:----------------------------------------------------------------------------------------|:---------|:---------------------|
#'  |alignment |alignment |Specifies the alignment of the component.                                                |Alignment |TRUE                  |
#'  |disabled  |disabled  |When `true`, interaction is prevented and the component is displayed with lower opacity. |boolean   |TRUE                  |
#'  |selected  |selected  |When `true`, the component is selected.                                                  |boolean   |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                                             |
#'  |:---------------------|:-------------------------------------------------------|
#'  |calciteTableRowSelect |Fires when the selected state of the component changes. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                                |
#'  |:-----------------|:--------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-table-cell` or `calcite-table-header` elements. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/table-row/)
#' @examples
#' calcite_table_row()
calcite_table_row <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-table-row",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Tabs component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name     |Attribute |Description                                                                                                                                        |Values      |Reflects to Attribute |
#'  |:--------|:---------|:--------------------------------------------------------------------------------------------------------------------------------------------------|:-----------|:---------------------|
#'  |bordered |bordered  |When `true`, displays the component with a folder style menu.                                                                                      |boolean     |FALSE                 |
#'  |layout   |layout    |Specifies the layout of the `calcite-tab-nav`, justifying the `calcite-tab-title`s to the start (`"inline"`), or across and centered (`"center"`). |TabLayout   |TRUE                  |
#'  |position |position  |Specifies the position of `calcite-tab-nav` and `calcite-tab-title` components in relation to the `calcite-tabs`.                                  |TabPosition |TRUE                  |
#'  |scale    |scale     |Specifies the size of the component.                                                                                                               |Scale       |TRUE                  |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                            |
#'  |:-----------------|:--------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-tab`s.      |
#'  |title-group       |A slot for adding a `calcite-tab-nav`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tabs/)
#' @examples
#' calcite_tabs()
calcite_tabs <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-tabs",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TextArea component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name              |Attribute          |Description                                                                                                                                      |Values                                                     |Reflects to Attribute |
#'  |:-----------------|:------------------|:------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------|:---------------------|
#'  |columns           |columns            |Specifies the component's number of columns.                                                                                                     |number                                                     |TRUE                  |
#'  |disabled          |disabled           |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                         |boolean                                                    |TRUE                  |
#'  |form              |form               |Specifies the `id` of the component's associated form.  When not set, the component is associated with its ancestor form element, if one exists. |string                                                     |TRUE                  |
#'  |groupSeparator    |group-separator    |When `true`, number values are displayed with a group separator corresponding to the language and country format.                                |boolean                                                    |TRUE                  |
#'  |label             |label              |Specifies an accessible label for the component.                                                                                                 |string                                                     |FALSE                 |
#'  |labelText         |label-text         |Specifies the component's label text.                                                                                                            |string                                                     |FALSE                 |
#'  |limitText         |limit-text         |When `true`, prevents input beyond the `maxLength` value, mimicking native text area behavior.                                                   |boolean                                                    |TRUE                  |
#'  |loading           |loading            |When `true`, a busy indicator is displayed.                                                                                                      |boolean                                                    |TRUE                  |
#'  |maxLength         |max-length         |When the component resides in a form, specifies the maximum number of characters allowed.                                                        |number                                                     |TRUE                  |
#'  |messageOverrides  |NA                 |Overrides individual strings used by the component.                                                                                              |Check API reference                                        |FALSE                 |
#'  |minLength         |min-length         |When the component resides in a form, specifies the minimum number of characters allowed.                                                        |number                                                     |TRUE                  |
#'  |name              |name               |Specifies the name of the component. Required to pass the component's value on form submission.                                                  |string                                                     |TRUE                  |
#'  |numberingSystem   |numbering-system   |Specifies the Unicode numeral system used by the component for localization.                                                                     |NumberingSystem                                            |FALSE                 |
#'  |placeholder       |placeholder        |Specifies the placeholder text for the component.                                                                                                |string                                                     |FALSE                 |
#'  |readOnly          |read-only          |When `true`, the component's `value` can be read, but cannot be modified.                                                                        |boolean                                                    |TRUE                  |
#'  |required          |required           |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                |boolean                                                    |TRUE                  |
#'  |resize            |resize             |Specifies if the component is resizable.                                                                                                         |"both" &#124; "horizontal" &#124; "vertical" &#124; "none" |TRUE                  |
#'  |rows              |rows               |Specifies the component's number of rows.                                                                                                        |number                                                     |TRUE                  |
#'  |scale             |scale              |Specifies the size of the component.                                                                                                             |"l" &#124; "m" &#124; "s"                                  |TRUE                  |
#'  |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                     |Status                                                     |TRUE                  |
#'  |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                    |IconName &#124; boolean                                    |TRUE                  |
#'  |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                 |string                                                     |FALSE                 |
#'  |validity          |NA                 |The component's current validation state.                                                                                                        |MutableValidityState                                       |FALSE                 |
#'  |value             |value              |The component's value.                                                                                                                           |string                                                     |FALSE                 |
#'  |wrap              |wrap               |Specifies the wrapping mechanism for the text.                                                                                                   |"soft" &#124; "hard"                                       |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                                           |
#'  |:---------------------|:-----------------------------------------------------|
#'  |calciteTextAreaChange |Fires each time a new `value` is typed and committed. |
#'  |calciteTextAreaInput  |Fires each time a new `value` is typed.               |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                       |
#'  |:-----------------|:-----------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding text.                                           |
#'  |label-content     |A slot for rendering content next to the component's `labelText`. |
#'  |footer-start      |A slot for adding content to the start of the component's footer. |
#'  |footer-end        |A slot for adding content to the end of the component's footer.   |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/text-area/)
#' @examples
#' calcite_text_area()
calcite_text_area <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-text-area",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TimePicker component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name             |Attribute        |Description                                                                                                                                                        |Values              |Reflects to Attribute |
#'  |:----------------|:----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |hourFormat       |hour-format      |Specifies the component's hour format, where:  `"user"` displays the user's locale format, `"12"` displays a 12-hour format, and `"24"` displays a 24-hour format. |HourFormat          |TRUE                  |
#'  |messageOverrides |NA               |Overrides individual strings used by the component.                                                                                                                |Check API reference |FALSE                 |
#'  |numberingSystem  |numbering-system |Specifies the Unicode numeral system used by the component for localization.                                                                                       |NumberingSystem     |FALSE                 |
#'  |scale            |scale            |Specifies the component's size.                                                                                                                                    |Scale               |TRUE                  |
#'  |step             |step             |Specifies the granularity the `value` must adhere to (in seconds).                                                                                                 |number              |TRUE                  |
#'  |time             |NA               |                                                                                                                                                                   |Check API reference |FALSE                 |
#'  |value            |value            |The component's value in UTC (always 24-hour format).                                                                                                              |string              |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                   |Description                                    |
#'  |:-----------------------|:----------------------------------------------|
#'  |calciteTimePickerChange |Fires when a user changes the component's time |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/time-picker/)
#' @examples
#' calcite_time_picker()
calcite_time_picker <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-time-picker",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Tooltip component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                              |Values                         |Reflects to Attribute |
#'  |:------------------|:-------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------|:---------------------|
#'  |closeOnClick       |close-on-click      |Closes the component when the `referenceElement` is clicked.                                                                                                                                                                                                                                                                                                             |boolean                        |TRUE                  |
#'  |label              |label               |Specifies an accessible label for the component.                                                                                                                                                                                                                                                                                                                         |string                         |FALSE                 |
#'  |offsetDistance     |offset-distance     |Specifies the distance to position the component away from the `referenceElement`.                                                                                                                                                                                                                                                                                       |number                         |TRUE                  |
#'  |offsetSkidding     |offset-skidding     |Specifies the distance to position the component along the `referenceElement`.                                                                                                                                                                                                                                                                                           |number                         |TRUE                  |
#'  |open               |open                |When `true`, the component is open.                                                                                                                                                                                                                                                                                                                                      |boolean                        |TRUE                  |
#'  |overlayPositioning |overlay-positioning |Specifies the type of positioning to use for overlaid content, where:  `"absolute"` works for most cases - positioning the component inside of overflowing parent containers, which affects the container's layout, and  `"fixed"` is used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`.              |OverlayPositioning             |TRUE                  |
#'  |placement          |placement           |Determines where the component will be positioned relative to the `referenceElement`.                                                                                                                                                                                                                                                                                    |LogicalPlacement               |TRUE                  |
#'  |referenceElement   |reference-element   |The `referenceElement` is used to position the component according to its `placement` value.  Setting the value to an `HTMLElement` is preferred so the component does not need to query the DOM.  However, a string `id` of the reference element can also be used.  The component should not be placed within its own `referenceElement` to avoid unintended behavior. |ReferenceElement &#124; string |FALSE                 |
#'  |topLayerDisabled   |top-layer-disabled  |When `true` and the component is `open`, disables top layer placement.  Only set this if you need complex z-index control or if top layer placement causes conflicts with third-party components.                                                                                                                                                                        |boolean                        |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                     |Description                                                                                              |
#'  |:-------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteTooltipBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteTooltipBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteTooltipClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteTooltipOpen        |Fires when the component is open and animation is complete.                                              |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description             |
#'  |:-----------------|:-----------------------|
#'  |Default (unnamed) |A slot for adding text. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tooltip/)
#' @examples
#' calcite_tooltip()
calcite_tooltip <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-tooltip",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Tree component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name          |Attribute      |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |Values              |Reflects to Attribute |
#'  |:-------------|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |lines         |lines          |When `true`, displays indentation guide lines.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |boolean             |TRUE                  |
#'  |scale         |scale          |Specifies the component's size.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |Scale               |TRUE                  |
#'  |selectedItems |NA             |Specifies the component's selected items.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |Check API reference |FALSE                 |
#'  |selectionMode |selection-mode |Specifies the selection mode of the component, where:  `"ancestors"` displays with a checkbox and allows any number of selections from corresponding parent and child selections,  `"children"` allows any number of selections from one parent from corresponding parent and child selections,  `"multichildren"` allows any number of selections from corresponding parent and child selections,  `"multiple"` allows any number of selections,  `"none"` allows no selections,  `"single"` allows one selection, and  `"single-persist"` allows and requires one selection. |SelectionMode       |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event             |Description                                                 |
#'  |:-----------------|:-----------------------------------------------------------|
#'  |calciteTreeSelect |Fires when the user selects/deselects `calcite-tree-items`. |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                              |
#'  |:-----------------|:----------------------------------------|
#'  |Default (unnamed) |A slot for `calcite-tree-item` elements. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tree/)
#' @examples
#' calcite_tree()
calcite_tree <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-tree",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TreeItem component
#'
#' 
#'
#' 
#'
#' @details
#' ## Properties

#' The following properties are provided by this component: 

#'  |Name        |Attribute     |Description                                                                                  |Values      |Reflects to Attribute |
#'  |:-----------|:-------------|:--------------------------------------------------------------------------------------------|:-----------|:---------------------|
#'  |disabled    |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.     |boolean     |TRUE                  |
#'  |expanded    |expanded      |When `true`, expands the component and its contents.                                         |boolean     |TRUE                  |
#'  |iconFlipRtl |icon-flip-rtl |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). |FlipContext |TRUE                  |
#'  |iconStart   |icon-start    |Specifies an icon to display at the start of the component.                                  |IconName    |TRUE                  |
#'  |label       |label         |Specifies an accessible label for the component.                                             |string      |FALSE                 |
#'  |selected    |selected      |When `true`, the component is selected.                                                      |boolean     |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                   |Description                                           |
#'  |:-----------------------|:-----------------------------------------------------|
#'  |calciteTreeItemCollapse |Fires when the component's content area is collapsed. |
#'  |calciteTreeItemExpand   |Fires when the component's content area is expanded.  |
#'  |calciteTreeItemSelect   |Fires when the component is selected or deselected.   |

#' ## Slots

#' The following slots are provided by this component: 

#'  |Slot              |Description                                                                                           |
#'  |:-----------------|:-----------------------------------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding text.                                                                               |
#'  |children          |A slot for adding nested `calcite-tree` elements.                                                     |
#'  |actions-end       |A slot for adding actions to the end of the component. It is recommended to use two or fewer actions. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tree-item/)
#' @examples
#' calcite_tree_item()
calcite_tree_item <- function(...) {
  attribs <- rlang::dots_list(...)
  attribs <- clean_attribs(attribs)

  res <- htmltools::tag(
      "calcite-tree-item",
      c(
        attribs,
        list(calcite_dependency(), calcite_bindings())
      )
    )

  class(res) <- c("calcite_component", class(res))
  res
}
