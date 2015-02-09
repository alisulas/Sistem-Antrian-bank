WaiterUp.Routers.ProviderRouter = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl= $('#main')
    this.collection = WaiterUp.Collections.menus;
    this.collection.fetch();
  },

  routes: {
    '': 'index',
    // 'menus/:id': 'show',
  },

  index: function () {
    var view = new WaiterUp.Views.DashboardShow({
      collection: this.collection
    });

    this._swapView(view);
  },


  // show: function(id) {
  //   var menu = WaiterUp.Collections.menus.getOrFetch(id);
  //   var view = new WaiterUp.Views.MenuShow({ model: menu });
  //
  //   this._swapView(view);
  // },

  _swapView: function (view) {
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
