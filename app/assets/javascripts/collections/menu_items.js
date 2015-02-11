WaiterUp.Collections.MenuItems = Backbone.Collection.extend({
  model: WaiterUp.Models.MenuItem,

  comparator: function () {
      return 5 - this.get("avg_rating");
  }
});


WaiterUp.Collections.menu_items = new WaiterUp.Collections.MenuItems
