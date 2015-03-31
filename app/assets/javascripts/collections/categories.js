WaiterUp.Collections.Categories = Backbone.Collection.extend({
  model: WaiterUp.Models.Category,

  getOrFetch: function (id) {
    var menu = this.get(id);

    if (!menu) {
      menu = new WaiterUp.Models.Menu({ id: id });
      menu.fetch({
        success: function () {
          this.add(menu);
        }.bind(this)
      });
    } else {
      menu.fetch();
    }

    return menu;
  }
});


WaiterUp.Collections.categories = new WaiterUp.Collections.Categories
