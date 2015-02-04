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
      // marker && WaiterUp.mapView.startBounce(marker);
      marker.setIcon('http://mt.google.com/vt/icon?psize=30&font=fonts/arialuni_t.ttf&color=ff00ff00&name=icons/spotlight/spotlight-waypoint-a.png&ax=43&ay=48&text=%E2%80%A2')
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
    marker.setIcon('http://mt.google.com/vt/icon?psize=30&font=fonts/arialuni_t.ttf&color=ff304C13&name=icons/spotlight/spotlight-waypoint-a.png&ax=43&ay=48&text=%E2%80%A2')

  }

});
