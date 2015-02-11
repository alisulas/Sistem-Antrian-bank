WaiterUp.Models.Category = Backbone.Model.extend({
  urlRoot: 'api/categories',
  menuItems: function () {
    if(!this._menuItems) {
      this._menuItems = new WaiterUp.Collections.MenuItems([], {
        category: this
      });
    }

    return this._menuItems;
  },

  parse: function (response) {
    if(response.menu_items) {
      this.menuItems().set(response.menu_items, { parse: true });
      delete response.menu_items;
    }

    return response;
  }
});
