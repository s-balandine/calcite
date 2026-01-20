#' @param ... Additional attributes passed to the component
#' @param ... Additional content or attributes (text label if provided as unnamed argument)
#' @param ... Child `calcite_action()` components or other content
#' @param ... Child `calcite_segmented_control_item()` elements
#' @param ... Child `calcite_tile()` components
#' @param ... Child components to wrap within the label (e.g., calcite_input_text())
#' @param ... Child content for slots (title, message, link, actions-end)
#' @param ... Child content for the accordion item (default slot)
#' @param ... Child content for the alert
#' @param ... Child content for the block
#' @param ... Child content for the list item (default slot)
#' @param ... Child content for the tile
#' @param ... Content for the button (default slot) - typically text or other elements
#' @param ... Content for the message (default slot) - typically text or textOutput()
#' @param ... Main content area
#' @param ... Main content area (typically a map or primary view)
#' @param ... Main content for the panel (default slot)
#' @param ... Main content to display in the default slot (between panels)
#' @param ... named attributes passed to `htmltools::tag()`
#' @param ... named properties to be updated in the component. The names must match the property name. Otherwise, will fail silently.
#' @param ... One or more [calcite_accordion_item()] components
#' @param ... One or more [calcite_list()_item()] components
#' @param action Content for the action slot (typically a calcite_action)
#' @param action_bar Content for the action-bar slot (typically [calcite_action_bar()])
#' @param actions Action bar content. Either a [calcite_action_bar()] component or
#' @param actions_end Content for the actions-end slot
#' @param actions_end Content for the actions-end slot (typically [calcite_action()] components)
#' @param actions_start Content for the actions-start slot
#' @param active When TRUE, the component is active (default: FALSE)
#' @param active Whether the action is highlighted/selected
#' @param active_range When range is TRUE, specifies active range: "start" or "end"
#' @param alerts Content for the alerts slot (typically [calcite_alert()] components)
#' @param alerts Slot for [calcite_alert()] components
#' @param alignment Specifies alignment of each tile's content: "start" or "center"
#' @param alignment Specifies alignment of tile's content: "start" or "center"
#' @param alignment Specifies the alignment of the component's elements: "center",
#' @param alignment Specifies the text alignment of the component: "start", "center",
#' @param alignment Text alignment of the value: "start", "center", or "end" (default: "start")
#' @param alignment Text alignment: "start", "center", or "end"
#' @param appearance Specifies the appearance style: "outline", "outline-fill",
#' @param appearance Visual style: "solid" or "transparent"
#' @param appearance Visual style: "solid" or "transparent" (default: "solid")
#' @param appearance Visual style: "solid", "outline", or "outline-fill"
#' @param auto_close When TRUE, the component closes automatically. Recommended for passive, non-blocking alerts (default: FALSE)
#' @param auto_close_duration Duration before auto-close: "fast", "medium", or "slow" (default: "medium")
#' @param autocomplete Type of content to autocomplete for forms
#' @param calendars Number of calendars displayed when range is TRUE: 1 or 2 (default: 2)
#' @param checked When TRUE, the component is checked
#' @param checked Whether this item is initially selected (default: FALSE)
#' @param clearable When TRUE, shows a clear button when the component has a value (default: FALSE)
#' @param closable Whether to display a close button in the header (default: FALSE)
#' @param closable Whether to show a close button (default: FALSE)
#' @param closed Whether the component is hidden (default: FALSE)
#' @param collapse_direction Direction of collapse icon: "down" or "up" (default: "down")
#' @param collapsed Whether the content area is hidden (default: FALSE)
#' @param collapsible Whether the block can be collapsed (default: FALSE)
#' @param collapsible Whether the panel can be collapsed (default: FALSE)
#' @param collapsible Whether the sidebar can be collapsed (default TRUE)
#' @param columns Number of columns when layout is "grid" (1-6)
#' @param content_bottom Content below the main slot and above the footer
#' @param content_bottom Slot for adding non-interactive elements below the component's content
#' @param content_end Content for the content-end slot
#' @param content_start Content for the content-start slot
#' @param content_top Content above the main slot and below the action-bar
#' @param content_top Slot for adding non-interactive elements above the component's content
#' @param description A description for the component, which displays below the heading
#' @param description Description text displayed below the heading
#' @param description Description text displayed in the header
#' @param dialogs Slot for [calcite_dialog()] components
#' @param disabled When TRUE, interaction is prevented and component displays with lower opacity (default: FALSE)
#' @param disabled When TRUE, interaction is prevented and displayed with lower opacity (default: FALSE)
#' @param disabled When TRUE, interaction is prevented and the component is
#' @param disabled When TRUE, interaction is prevented and the component is displayed
#' @param disabled When TRUE, interaction is prevented and the component is displayed with lower opacity
#' @param disabled Whether interaction is prevented (default: FALSE)
#' @param disabled Whether the action is disabled
#' @param disabled Whether the control is disabled (default: FALSE)
#' @param disabled Whether the slider is disabled (default: FALSE)
#' @param download Prompts the user to save the linked URL instead of navigating
#' @param download Prompts the user to save the linked URL instead of navigating to it.
#' @param drag_disabled Prevent dragging when parent Block Group enables it (default: FALSE)
#' @param expanded Whether the block is currently expanded (default: FALSE)
#' @param expanded Whether the group is expanded
#' @param expanded Whether the item is currently expanded (default: FALSE)
#' @param fab Floating action button (typically [calcite_fab()])
#' @param footer Content for the footer slot (bottom of shell)
#' @param footer Custom content for the footer (don't use with footer_start/footer_end)
#' @param footer Optional footer content
#' @param footer_end Trailing footer content (don't use with footer slot)
#' @param footer_start Leading footer content (don't use with footer slot)
#' @param form The id of the form associated with the component
#' @param form The id of the form that will be associated with the component
#' @param group_separator When TRUE, number values display with a group separator
#' @param group_separator Whether to display thousand separators in numbers (default: FALSE)
#' @param header Content for the header slot (top of shell). Typically a
#' @param header_actions Optional actions for the header (e.g., user menu, settings).
#' @param header_actions_end Actions or content at the end of the header
#' @param header_actions_start Actions or content at the start of the header
#' @param header_content Custom content for the header
#' @param header_menu_actions Overflow menu with actions (typically in [calcite_dropdown()])
#' @param heading Header text for the block
#' @param heading Header text for the panel
#' @param heading Heading text for the accordion item
#' @param heading The component header text
#' @param heading_level Heading level for document structure (1-6)
#' @param heading_level Semantic heading level (1-6) for accessibility
#' @param href Specifies the URL of the linked resource (absolute or relative path)
#' @param href The URL of the linked resource (required) - can be absolute or relative path
#' @param href When provided, the URL for the component (makes tile a link)
#' @param icon Icon name from the Calcite icon set
#' @param icon Icon to display in the header
#' @param icon Show default icon (TRUE) or specific icon name (string)
#' @param icon Specifies an icon to display
#' @param icon Specifies an icon to display (TRUE for default or icon name)
#' @param icon When TRUE, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon
#' @param icon_end Icon to display at the end of the header
#' @param icon_end Icon to display at the end of the item
#' @param icon_end Specifies an icon to display at the end of the component
#' @param icon_end Specifies an icon to display at the end of the link
#' @param icon_flip_rtl Displays the iconStart and/or iconEnd as flipped when
#' @param icon_flip_rtl Displays the iconStart and/or iconEnd as flipped when the
#' @param icon_flip_rtl Flip icon in RTL languages (default: FALSE)
#' @param icon_flip_rtl Flip icons in RTL languages: "start", "end", or "both"
#' @param icon_flip_rtl When TRUE, icon is flipped in RTL direction (default: FALSE)
#' @param icon_flip_rtl When TRUE, icon will be flipped when element direction is RTL (default: FALSE)
#' @param icon_flip_rtl When TRUE, the icon will be flipped when the element direction is right-to-left
#' @param icon_flip_rtl Whether to flip the icon in RTL languages (default: FALSE)
#' @param icon_position Placement of the icon in the header: "start" or "end" (default: "end")
#' @param icon_start Icon to display at the start of the header
#' @param icon_start Icon to display at the start of the item
#' @param icon_start Specifies an icon to display at the start of the component
#' @param icon_start Specifies an icon to display at the start of the link
#' @param icon_type Type of icon in the header: "chevron", "caret", or "plus-minus" (default: "chevron")
#' @param id Component ID (optional)
#' @param id Component ID (required for Shiny reactivity)
#' @param id Optional ID for the action (required for Shiny reactivity)
#' @param id Optional ID for the action group
#' @param id Optional ID for the date picker (required for Shiny reactivity)
#' @param id Optional ID for the switch (required for Shiny reactivity)
#' @param id Optional ID for the tile (required for Shiny reactivity)
#' @param id Optional ID for the tile group (required for Shiny reactivity to track selection)
#' @param id the html ID of the element to update. Must be a character scalar.
#' @param indicator Whether to show a visual indicator (e.g., notification badge)
#' @param integer When TRUE, restricts the component to integer numbers only and
#' @param kind Specifies the kind of alert: "brand", "danger", "info", "success", or "warning" (default: "brand")
#' @param kind Specifies the kind of the component: "brand", "danger", "inverse",
#' @param kind Type of notice: "brand", "danger", "info", "success", or "warning"
#' @param label Accessibility label for the group
#' @param label Accessible name for the component
#' @param label Accessible name for the component (required for accessibility)
#' @param label Accessible name for the component (required)
#' @param label Custom accessibility label (defaults to `text` if not provided)
#' @param label label text for the list item
#' @param label The label text (required)
#' @param label_content Content for the label-content slot
#' @param label_handles Whether to display numeric labels on handles (default: FALSE)
#' @param label_text Label displayed on the component
#' @param label_text When provided, displays label text on the component
#' @param label_text_end When provided, displays label text at the end of the component
#' @param label_text_start When provided, displays label text at the start of the component
#' @param label_ticks Whether to display numeric labels on tick marks (default: FALSE)
#' @param layout Defines the layout of the label: "block", "default", "inline",
#' @param layout Defines the layout: "horizontal" for rows, "vertical" for a single column
#' @param layout Defines the layout: "horizontal" or "vertical"
#' @param layout Layout style: "vertical", "horizontal", or "grid"
#' @param layout Orientation: "horizontal" or "vertical"
#' @param link Content for the link slot (typically [calcite_link()])
#' @param loading When TRUE, a busy indicator is displayed (default: FALSE)
#' @param loading When TRUE, displays a busy indicator (default: FALSE)
#' @param loading Whether to display a busy indicator (default: FALSE)
#' @param loading Whether to show a loading indicator
#' @param logo Optional logo component for the navigation
#' @param max Latest allowed date ("yyyy-mm-dd")
#' @param max Maximum selectable value (default: 100)
#' @param max Maximum value for the input
#' @param max_label Accessible label for the maximum handle (for screen readers)
#' @param max_length Maximum length of text for the component's value
#' @param max_value For range sliders, the upper bound value
#' @param menu_flip_placements Fallback placements for the menu when space is insufficient
#' @param menu_open Whether the action menu items are open (default: FALSE)
#' @param menu_placement Placement of the action menu
#' @param menu_placement Placement of the action menu (default: "bottom-end")
#' @param message Content for the message slot
#' @param message_overrides Override individual strings used by the component
#' @param min Earliest allowed date ("yyyy-mm-dd")
#' @param min Minimum selectable value (default: 0)
#' @param min Minimum value for the input
#' @param min_label Accessible label for the minimum handle (for screen readers)
#' @param min_length Minimum length of text for the component's value
#' @param min_value For range sliders, the lower bound value
#' @param modals Slot for [calcite_modal()] components
#' @param month_style Month display style: "wide" (default) or "abbreviated"
#' @param name Name for form submission
#' @param name Specifies the name of the component (required for form submission)
#' @param name Specifies the name of the component on form submission
#' @param name Specifies the name of the component. Required to pass the component's value on form submission
#' @param nav_actions Optional actions for the navigation bar (placed in `content-end`)
#' @param number_button_type Placement of the increment/decrement buttons: "vertical",
#' @param numbering_system Unicode numeral system for localization: "arab", "arabext", or "latn"
#' @param numbering_system Unicode numeral system: "arab", "arabext", or "latn"
#' @param numbering_system Unicode numeral system: "latn", "arab", or "arabext"
#' @param open When true, displays and positions the component (default: FALSE)
#' @param open Whether the notice is visible (default: FALSE)
#' @param overlay_positioning Positioning type for overlaid content: "absolute" or "fixed"
#' @param overlay_positioning Positioning type for overlaid content: "absolute" or "fixed" (default: "absolute")
#' @param page_step Interval to move with Page Up/Down keys
#' @param panel_bottom Content for the bottom panel (above footer)
#' @param panel_content Content for the side panel (shown when an action is selected).
#' @param panel_end Content for the end/right panel. Use [calcite_shell_panel()]
#' @param panel_position Position of the panel. Either "start" (left) or "end" (right).
#' @param panel_start Content for the start/left panel. Use [calcite_shell_panel()]
#' @param panel_top Content for the top panel (below header)
#' @param panel_width Width of the panel when expanded. Options: "s", "m", "l".
#' @param pattern Regular expression pattern the value must match for validation
#' @param placeholder Specifies placeholder text for the component
#' @param placement Placement of the component: "top", "top-start", "top-end", "bottom", "bottom-start", or "bottom-end" (default: "bottom")
#' @param position Position of sidebar: "start" (left) or "end" (right)
#' @param precise Whether to use finer positioning for handles (default: FALSE)
#' @param prefix_text Text to display at the start of the component
#' @param proximity_selection_disabled When TRUE, disables default range narrowing behavior (default: FALSE)
#' @param queue Ordering priority when opened: "immediate", "last", or "next" (default: "last")
#' @param range When TRUE, activates range mode to allow start and end dates (default: FALSE)
#' @param read_only When TRUE, value can be read but not modified (default: FALSE)
#' @param rel Defines the relationship between the href value and the current document
#' @param rel Specifies the relationship to the linked document (e.g., "noopener", "noreferrer")
#' @param required When TRUE, must have a value for form submission (default: FALSE)
#' @param required Whether selection is required
#' @param round When TRUE, adds a round style to the component (default: FALSE)
#' @param scale Size of the action: "s" (small), "m" (medium), or "l" (large)
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large) (default: "m")
#' @param scale Size of the component: "s", "m", or "l" (default: "m")
#' @param scale Size of the control: "s" (small), "m" (medium), or "l" (large)
#' @param scale Size of the group: "s" (small), "m" (medium), or "l" (large)
#' @param scale Size of the slider: "s" (small), "m" (medium), or "l" (large)
#' @param scale Specifies size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param scale Specifies the size of the component: "s" (small), "m" (medium),
#' @param scale Specifies the size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param selected When TRUE and parent's selectionMode allows it, component is selected (default: FALSE)
#' @param selection_appearance Specifies selection appearance: "icon" (checkmark/dot) or "border"
#' @param selection_mode Selection mode: "multiple" allows any number of selections, "single" allows only one selection, "single-persist" allows one selection and prevents de-selection (default: "multiple")
#' @param selection_mode Specifies the selection mode: "none" (default), "single", "single-persist", or "multiple"
#' @param session a shiny session object. Default [shiny::getDefaultReactiveDomain()].
#' @param sheets Slot for [calcite_sheet()] components
#' @param sidebar Content for the sidebar panel
#' @param slot Optional slot name (e.g., "bottom-actions" for action bars)
#' @param snap Whether to enable snap-to-step on mouse interaction (default: FALSE)
#' @param sort_handle_open Display and position the sort handle (default: FALSE)
#' @param split_child Specifies if the component is a child of a calcite-split-button:
#' @param status Status of the input field: "idle", "valid", or "invalid" (default: "idle")
#' @param status Status of the message: "idle", "valid", or "invalid" (default: "idle")
#' @param status Validation state: "idle", "valid", or "invalid"
#' @param step Granularity the value must adhere to (can be "any" or a number)
#' @param step Increment step for up/down arrows and keyboard (default: 1)
#' @param suffix_text Text to display at the end of the component
#' @param target Specifies the frame or window to open the linked document
#' @param target Specifies where to open the linked document defined in href
#' @param target_id The id of the component this label is bound to (only needed when
#' @param text Text label for the action (required, also used for accessibility)
#' @param text The link text to display (required)
#' @param text_enabled Whether to display the text label alongside the icon
#' @param ticks Interval for displaying tick marks on the number line
#' @param title Application title shown in the navigation header
#' @param title Content for the title slot
#' @param title Optional application title
#' @param type Specifies the default behavior: "button", "reset", or "submit"
#' @param validation_icon Validation icon to display (TRUE or icon name)
#' @param validation_message Message displayed for validation feedback
#' @param validation_message Validation message to display
#' @param value Initial selected value (should match a child item's value)
#' @param value Initial value (for single slider) or NULL
#' @param value Selected date as a string ("yyyy-mm-dd"), or array of strings for range values
#' @param value The component's value
#' @param value The value this item represents (required)
#' @param width Specifies the width of the component: "auto", "full", or "half"
#' @param width Width behavior: "auto" or "full"
#' @param width Width behavior: "auto" or "full" (note: "half" is deprecated)
#' @param width Width of the sidebar: "s", "m", or "l"
