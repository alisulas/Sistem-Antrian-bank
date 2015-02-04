WaiterUp.Views.PlaceShow = Backbone.CompositeView.extend({

  template: JST['places/show'],
  className: 'place-show',

  initialize: function () {

    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.menus(), 'add', this.addMenu);
  },

  render: function () {
    var view = this;
    setTimeout(function () {
      var marker = WaiterUp.mapView._markers[view.model.id];
      marker && WaiterUp.mapView.startBounce(marker);
    }, 0);

    var content = this.template({ place: this.model });
    this.$el.html(content);
    this.renderMenus();
    return this;
  },

  addMenu: function (menu) {
    var view = new WaiterUp.Views.MenuShow({ model: menu });
    this.addSubview('.menus', view);
  },

  renderMenus: function () {
    this.model.menus().each(this.addMenu.bind(this));
  },

  remove: function () {
    Backbone.View.prototype.remove.call(this);
    var marker = WaiterUp.mapView._markers[this.model.id];
    WaiterUp.mapView.endBounce(marker);

  }

});
