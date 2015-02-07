WaiterUp.Models.MenuItem = Backbone.Model.extend({
  urlRoot: 'api/menu_items',

  comments: function () {
    if(!this._comments) {
      this._comments = new WaiterUp.Collections.Comments([], {
        category: this
      });
    }

    return this._comments;
  },

  parse: function (response) {
    if(response.comments) {
      this.comments().set(response.comments, { parse: true });
      delete response.comments;
    }

    return response;
  }
});
