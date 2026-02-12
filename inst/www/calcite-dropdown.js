// Custom Shiny input binding for calcite-dropdown
(function() {

  const binding = new Shiny.InputBinding();

  $.extend(binding, {

    find: function(scope) {
      return $(scope).find("calcite-dropdown");
    },

    initialize: function(el) {
      customElements.whenDefined('calcite-dropdown').then(() => {

        const checkReady = () => {
          if (el.selectedItems) {
            // Component is ready, send initial value
            const initialValue = binding.getValue(el);
            if (el.id) {
              Shiny.setInputValue(el.id, initialValue);
            }
          } else {
            // Not ready yet, check again
            requestAnimationFrame(checkReady);
          }
        };

        // Start checking
        requestAnimationFrame(checkReady);
      });
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      var values = [];
      var selectedItems = el.selectedItems;
      if (selectedItems !== undefined) {
        for (var i = 0; i < selectedItems.length; i++) {
          values.push(selectedItems[i].id);
        }
      }
      el.setAttribute('value', values);
      return {
        closeOnSelectDisabled: el.closeOnSelectDisabled,
        disabled: el.disabled,
        flipPlacements: el.flipPlacements,
        maxItems: el.maxItems,
        open: el.open,
        overlayPositioning: el.overlayPositioning,
        placement: el.placement,
        scale: el.scale,
        values: values,
        type: el.type,
        widthScale: el.widthScale
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteDropdownInputBinding:updated");
    },

    subscribe: function(el, callback) {
      console.log('subscribe');

      // Wait for component to be ready, then initialize
      const initializeValue = function() {
        const initialValue = binding.getValue(el);
        Shiny.setInputValue(el.id, initialValue);
      };

      if (el.componentOnReady) {
        el.componentOnReady().then(initializeValue);
      } else {
        // Fallback: wait a bit for component to initialize
        setTimeout(initializeValue, 100);
      }


      $(el).on("calciteDropdownBeforeClose.calciteDropdownInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(`${el.id}_before_close`, currentValue, {priority: "event"});

        callback(true);
      });

      $(el).on("calciteDropdownBeforeOpen.calciteDropdownInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(`${el.id}_before_open`, currentValue, {priority: "event"});

        callback(true);
      });

      $(el).on("calciteDropdownClose.calciteDropdownInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(`${el.id}_close`, currentValue, {priority: "event"});

        callback(true);
      });

      $(el).on("calciteDropdownOpen.calciteDropdownInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(`${el.id}_open`, currentValue, {priority: "event"});

        callback(true);
      });

      $(el).on("calciteDropdownSelect.calciteDropdownInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(`${el.id}_before_select`, currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteDropdownInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });

    },

    unsubscribe: function(el) {
      $(el).off(".calciteDropdownInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteDropdown");
})();
