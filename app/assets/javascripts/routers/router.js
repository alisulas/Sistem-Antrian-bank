WaiterUp.Routers.Router = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl= $('#main')
  },

  routes: {
    '': 'index',
  },

  index: function () {
    WaiterUp.Collections.places.fetch();

    var view = new WaiterUp.Views.PlacesIndex({
      collection: WaiterUp.Collections.places
    });

    this._swapView(view);
  },

  _swapView: function (view) {
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
