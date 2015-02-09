WaiterUp.Routers.Router = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl= $('#main')
    this.collection = WaiterUp.Collections.places
    this.collection.fetch();

    var mapView = WaiterUp.mapView = new WaiterUp.Views.MapShow({
      collection: this.collection
    });

    $('.map').html(mapView.$el);
  },

  routes: {
    '': 'index',
    'places/:id': 'show',
  },

  index: function () {
    var view = new WaiterUp.Views.PlacesIndex({
      collection: this.collection
    });

    this._swapView(view);
  },


  show: function(id) {
    var place = WaiterUp.Collections.places.getOrFetch(id);
    var view = new WaiterUp.Views.PlaceShow({ model: place });

    this._swapView(view);
  },

  _swapView: function (view) {
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
