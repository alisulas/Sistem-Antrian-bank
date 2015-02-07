WaiterUp.Collections.Comments = Backbone.Collection.extend({
  url: 'api/comments',
  model: WaiterUp.Models.Comment,

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


WaiterUp.Collections.categories = new WaiterUp.Collections.Categories
