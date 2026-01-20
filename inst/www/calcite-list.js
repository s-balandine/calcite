// Custom Shiny input binding for calcite-list
(function() {

  const binding = new Shiny.InputBinding();

  $.extend(binding, {

    find: function(scope) {
      return $(scope).find("calcite-list");
    },

    initialize: function(el){
      const currentValue = this.getValue(el);
      Shiny.setInputValue(el.id, currentValue);
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      var selectedValues = [];
      var selectedItems = el.selectedItems;
      console.log(selectedItems);
      console.log(!!selectedItems);
      if (selectedItems !== undefined) {
        for (var i = 0; i < selectedItems.length; i++) {
          selectedValues.push(selectedItems[i].value);
        }
      }
      el.setAttribute('value', selectedValues);
      return {
        drag_enabled: el.dragEnabled,
        scale: el.scale,
        selection_mode: el.selectionMode,
        value: selectedValues
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteListInputBinding:updated");
    },

    subscribe: function(el, callback) {
      console.log('subscribe');

      $(el).on("calciteListChange.calciteListInputBinding", function() {
        console.log('change');
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});

        callback(true);
      });

      $(el).on("calciteListDragStart.calciteListInputBinding", function() {
        console.log('calciteListDragStart');
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
