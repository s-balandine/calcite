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
      $(el).trigger("calciteListItemInputBinding:updated");
    },

    subscribe: function(el, callback) {

      $(el).on("calciteListItemSelect.calciteListItemInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for list item expand event
      $(el).on("calciteListItemExpand.calciteListItemInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for list item collapse event
      $(el).on("calciteListItemCollapse.calciteListItemInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteListItemInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteListItemInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteListItem");
})();
