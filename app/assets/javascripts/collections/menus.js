WaiterUp.Collections.Menus = Backbone.Collection.extend({
  url: 'api/menus',
  model: WaiterUp.Models.Menu,

  getOrFetch: function (id) {
    var menu = this.get(id);

    if(!menu) {
      menu = new WaiterUp.Models.Menus({ id: id });
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


WaiterUp.Collections.menus = new WaiterUp.Collections.Menus
