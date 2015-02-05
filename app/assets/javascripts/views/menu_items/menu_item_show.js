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
        // score: 3
      });
    }.bind(this))

    return this;
  },

  createRating: function () {
    this.rating = this.$('.rating').find('input').val();
    console.log(this.rating);
    var newRating = new WaiterUp.Models.Rating({
      menu_item_id: this.model.id,
      score: this.rating
    });

    newRating.save({
      success: function () {
        // var score =

      }
    });
  }

});
