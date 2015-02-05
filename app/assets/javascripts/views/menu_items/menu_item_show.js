WaiterUp.Views.MenuItemShow = Backbone.CompositeView.extend({

  template: JST['menu_items/show'],
  className: 'menu-item-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  events: {
    'click .rating': 'createRating'
  },

  render: function () {
    var content = this.template({ menu_item: this.model });
    this.$el.html(content);
    this.$el.data('list-id', this.model.id);
    setTimeout( function () {
      this.$('.rating').raty({
        path: 'assets',
        half: true,
        noRatedMsg: 'Not rated yet!',
        score: this.model.get('avg_rating')
      });
    }.bind(this))

    return this;
  },

  createRating: function () {
    this.rating = this.$('.rating').raty('score');
    var newRating = new WaiterUp.Models.Rating({
      menu_item_id: this.model.id,
      score: this.rating
    });

    newRating.save({}, {
      success: function () {
        this.model.fetch();
      }.bind(this),
      error: function (model, response) {
        var error = response.responseJSON.error;
        debugger
        if (error === "rated") {
          alert("Already rated!");
        } else {
          alert("Must login first!");
        }
        this.render();
      }.bind(this),
    });
  }

});
