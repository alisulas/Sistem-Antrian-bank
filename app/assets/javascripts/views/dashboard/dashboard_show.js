WaiterUp.Views.DashboardShow = Backbone.CompositeView.extend({

  template: JST['dashboard/show'],
  className: 'dashboard-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  events: {
    'click a.add-menu': 'renderMenuForm'
  },

  render: function () {
    if(!this.model) {
      return this;
    }

    var view = this;

    var content = this.template({ menus: this.model.menus() });
    this.$el.html(content);
    this.renderMenus();
    this.attachSubviews();
    return this;
  },

  addMenu: function (menu) {
    var view = new WaiterUp.Views.MenuShow({
      model: menu,
      menus: this.model.menus()
    });
    this.addSubview('.provider-menus', view);
  },

  renderMenus: function () {
    this.model.menus().each(this.addMenu.bind(this));
  },

  renderMenuForm: function (menu) {
    var view = new WaiterUp.Views.MenuForm({
      model: new WaiterUp.Models.Menu({
        place_id: this.model.id
      }),
      menus: this.model.menus()
    });
    this.$('a.add-menu').hide();
    this.addSubview('#menu-form', view);
  }
});
