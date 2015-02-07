WaiterUp.Models.Menu = Backbone.Model.extend({
  categories: function () {
    if(!this._categories) {
      this._categories = new WaiterUp.Collections.Categories([], {
        menu: this
      });
    }

    return this._categories;
  },

  parse: function (response) {
    if(response.categories) {
      this.categories().set(response.categories, { parse: true });
      delete response.categories;
    }

    return response;
  }
});
