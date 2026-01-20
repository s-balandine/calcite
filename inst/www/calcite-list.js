// Custom Shiny input binding for calcite-list
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-list");
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      return {
        appearance: el.appearance,
        iconPosition: el.iconPosition,
        iconType: el.iconType,
        scale: el.scale,
        selectionMode: el.selectionMode
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteListInputBinding:updated");
    },

    initialize: function(el) {
      const currentValue = this.getValue(el);
      Shiny.setInputValue(el.id, currentValue);
    },

    subscribe: function(el, callback) {

      $(el).on("calciteListChange.calciteListInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});

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
