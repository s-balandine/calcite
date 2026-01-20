// Custom Shiny input binding for calcite-list-item
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-list-item");
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      return {
        description: el.description,
        expanded: el.expanded,
        iconEnd: el.iconEnd,
        iconFlipRtl: el.iconFlipRtl,
        iconStart: el.iconStart
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calcitelistItemInputBinding:updated");
    },

    subscribe: function(el, callback) {
      // Listen for list item expand event
      $(el).on("calcitelistItemExpand.calcitelistItemInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for list item collapse event
      $(el).on("calcitelistItemCollapse.calcitelistItemInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calcitelistItemInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calcitelistItemInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calcitelistItem");
})();
