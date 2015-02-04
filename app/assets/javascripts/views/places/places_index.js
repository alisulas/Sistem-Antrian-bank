WaiterUp.Views.PlacesIndex = Backbone.View.extend({

  template: JST['places/index'],
  className: 'place-index',

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
    this.mapView = new WaiterUp.Views.MapShow({
      collection: this
    });

  },

  render: function () {
    var content = this.template({ places: this.collection });
    this.$el.html(content);
    this.attachMap();
    return this;
  },

  attachMap: function () {
    this.$('.map').html(this.mapView.$el);
  },
});
