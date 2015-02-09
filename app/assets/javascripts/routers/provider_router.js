WaiterUp.Routers.ProviderRouter = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl= $('#main')
    this.collection = WaiterUp.Collections.places;
    // this.model = new WaiterUp.Models.Place();
    // this.model = this.collection.getOrFetch();
    this.collection.fetch({
      success: function () {
        this.model = this.collection.where({
          owner_id: CURRENT_USER.id.toString()
        })[0];
        this.index();
      }.bind(this)
    });
  },

  routes: {
    '': 'index',
    // 'menus/:id': 'show',
  },

  index: function () {
    if (!this.model) { return; }
    this.model.fetch();

    var view = new WaiterUp.Views.DashboardShow({
      model: this.model
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
