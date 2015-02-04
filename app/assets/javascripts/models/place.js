WaiterUp.Models.Place = Backbone.Model.extend({
  urlRoot: 'api/places',

  menus: function () {
    if(!this._menus) {
      this._menus = new WaiterUp.Collections.Menus([], { place: this });
    }

    return this._menus;
  },

  parse: function (response) {
    if(response.menus) {
      this.menus().set(response.menus, { parse: true });
      delete response.menus;
    }

    return response;
  }
});
