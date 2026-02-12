// Custom Shiny input binding for calcite-tree
(function() {

  const binding = new Shiny.InputBinding();

  $.extend(binding, {

    find: function(scope) {
      return $(scope).find("calcite-tree");
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
      if (selectedItems !== undefined) {
        for (var i = 0; i < selectedItems.length; i++) {
          if (selectedItems[i].label !== undefined) {
            selectedValues.push(selectedItems[i].label);
          }
        }
      }
      el.setAttribute('value', selectedValues);
      return {
        lines: el.lines,
        scale: el.scale,
        selection_mode: el.selectionMode,
        value: selectedValues
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calcitetreeInputBinding:updated");
    },

    subscribe: function(el, callback) {
      console.log('subscribe');

      $(el).on("calciteTreeSelect.calcitetreeInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(`${el.id}_select`, currentValue, {priority: "event"});

        callback(true);
      });

      // treeen for update events (from server)
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
