WaiterUp.Models.Category = Backbone.Model.extend({
  menu_items: function () {
    if(!this._menu_items) {
      this._menu_items = new WaiterUp.Collections.MenuItems([], {
        category: this
      });
    }

    return this._menu_items;
  },

  parse: function (response) {
    if(response.menu_items) {
      this.menu_items().set(response.menu_items, { parse: true });
      delete response.menu_items;
    }

    return response;
  }
});
