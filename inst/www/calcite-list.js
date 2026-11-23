// Custom Shiny input binding for calcite-list
(function() {

  const binding = new Shiny.InputBinding();

  $.extend(binding, {

    find: function(scope) {
      return $(scope).find("calcite-list");
    },

    // The component is loaded asynchronously (ES module), so `selectedItems`
    // may not be available yet when Shiny calls `initialize()`.
    // Wait for the custom element to be defined and ready before sending
    // the initial value to Shiny.
    initialize: function(el) {
      if (!el.id) {
        return;
      }

      let sent = false;
      const sendInitialValue = function() {
        if (sent) {
          return;
        }
        sent = true;
        Shiny.setInputValue(el.id, binding.getValue(el));
      };

      const whenDefined = (window.customElements && customElements.whenDefined)
        ? customElements.whenDefined('calcite-list')
        : Promise.resolve();

      whenDefined
        .then(() => {
          if (typeof el.componentOnReady === 'function') {
            return el.componentOnReady();
          }
          return undefined;
        })
        .then(() => {
          // Component is upgraded, but the light DOM items may still be in
          // the process of being upgraded. Poll until the selected items are
          // available.
          let attempts = 0;
          const checkReady = function() {
            attempts++;
            if (Array.isArray(el.selectedItems) || attempts > 120) {
              sendInitialValue();
            } else {
              requestAnimationFrame(checkReady);
            }
          };
          requestAnimationFrame(checkReady);
        })
        .catch(sendInitialValue);

      // Safety net: never block the initial value forever.
      setTimeout(sendInitialValue, 1000);
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      var selectedItems = Array.isArray(el.selectedItems) ? el.selectedItems : [];

      var values = [];
      var ids = [];
      var items = [];

      for (var i = 0; i < selectedItems.length; i++) {
        var item = selectedItems[i];
        if (!item) {
          continue;
        }
        if (item.value !== undefined && item.value !== null) {
          values.push(item.value);
        }
        if (item.id) {
          ids.push(item.id);
        }
        items.push({
          id: item.id || null,
          value: item.value !== undefined ? item.value : null,
          label: item.label !== undefined ? item.label : null,
          selected: item.selected === true,
          expanded: item.expanded === true
        });
      }

      return {
        drag_enabled: el.dragEnabled === true,
        display_mode: el.displayMode,
        scale: el.scale,
        selection_mode: el.selectionMode,
        selection_appearance: el.selectionAppearance,
        filter_text: el.filterText,
        value: values,
        value_ids: ids,
        items: items
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(function(entry) {
        var key = entry[0];
        var value = entry[1];
        if (key === 'value_ids' || key === 'items') {
          // Ignore read-only helper properties
          return;
        }
        el[key] = value;
      });
      $(el).trigger("calciteListInputBinding:updated");
    },

    subscribe: function(el, callback) {
      // Avoid duplicated handlers if subscribe() is called more than once.
      $(el).off(".calciteListInputBinding");

      // Listen for selection changes
      $(el).on("calciteListChange.calciteListInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        Shiny.setInputValue(el.id + '_change', currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for drag start events
      $(el).on("calciteListDragStart.calciteListInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id + '_drag_start', currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteListInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteListInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteList");
})();
