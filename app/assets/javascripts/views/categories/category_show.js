WaiterUp.Views.CategoryShow = Backbone.CompositeView.extend({

  template: JST['categories/show'],
  className: 'category-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.menu_items(), 'add', this.addMenuItem);
    this.renderMenuItems();

  },

  render: function () {
    var content = this.template({ category: this.model });
    this.$el.html(content);
    this.$el.data('list-id', this.model.id);
    return this;
  },

  addMenuItem: function (menu_item) {
    var view = new WaiterUp.Views.MenuItemShow({ model: menu_item });
    this.addSubview('.menu-items', view);
  },

  renderMenuItems: function () {
    this.model.menu_items().each(this.addMenuItem.bind(this));
  },

});
