WaiterUp.Views.PlacesIndex = Backbone.View.extend({

  template: JST['places/index'],
  className: 'place-index',

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function () {
    var content = this.template({ places: this.collection });
    this.$el.html(content);
    return this;
  }

});
