// Custom Shiny input binding for calcite-tree
(function() {

  const binding = new Shiny.InputBinding();

  $.extend(binding, {

    find: function(scope) {
      return $(scope).find("calcite-tree");
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
        ? customElements.whenDefined('calcite-tree')
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

      var labels = [];
      var ids = [];
      var items = [];

      for (var i = 0; i < selectedItems.length; i++) {
        var item = selectedItems[i];
        if (!item) {
          continue;
        }
        var label = item.label !== undefined ? item.label : null;
        if (label !== null) {
          labels.push(label);
        }
        if (item.id) {
          ids.push(item.id);
        }
        items.push({
          id: item.id || null,
          label: label,
          selected: item.selected === true,
          expanded: item.expanded === true
        });
      }

      return {
        lines: el.lines === true,
        scale: el.scale,
        selection_mode: el.selectionMode,
        value: labels,
        value_ids: ids,
        items: items
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(function(entry) {
        var key = entry[0];
        var value = entry[1];
        if (key === 'value_ids') {
          // Ignore read-only helper property
          return;
        }
        el[key] = value;
      });
      $(el).trigger("calcitetreeInputBinding:updated");
    },

    subscribe: function(el, callback) {
      // Avoid duplicated handlers if subscribe() is called more than once.
      $(el).off(".calcitetreeInputBinding");

      $(el).on("calciteTreeSelect.calcitetreeInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        Shiny.setInputValue(el.id + '_select', currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calcitetreeInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calcitetreeInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calcitetree");
})();
