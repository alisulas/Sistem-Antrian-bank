WaiterUp.Collections.MenuItems = Backbone.Collection.extend({
  model: WaiterUp.Models.MenuItem,

  getOrFetch: function (id) {
    var category = this.get(id);

    if(!category) {
      category = new WaiterUp.Models.Category({ id: id });
      category.fetch({
        success: function () {
          this.add(category);
        }.bind(this)
      });
    } else {
      category.fetch();
    }

    return category;
  }

});


WaiterUp.Collections.menu_items = new WaiterUp.Collections.MenuItems
