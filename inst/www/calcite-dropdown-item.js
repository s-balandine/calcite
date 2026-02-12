// Custom Shiny input binding for calcite-dropdown-item
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-dropdown-item");
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      return {
        id: el.id,
        disabled: el.disabled,
        href: el.href,
        iconEnd: el.iconEnd,
        iconFlipRtl: el.iconFlipRtl,
        iconStart: el.iconStart,
        label: el.label,
        rel: el.rel,
        selected: el.selected,
        target: el.target
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteDropDownItemInputBinding:updated");
    },

    subscribe: function(el, callback) {

      $(el).on("calciteDropdownItemSelect.calciteDropDownItemInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(`${el.id}_select`, currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteDropDownItemInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteDropDownItemInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteDropDownItem");
})();
