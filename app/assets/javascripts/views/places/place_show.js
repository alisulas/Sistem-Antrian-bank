WaiterUp.Views.PlaceShow = Backbone.CompositeView.extend({

  template: JST['places/show'],
  className: 'place-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.menus(), 'add', this.addMenu);
  },

  render: function () {
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

});
