WaiterUp.Views.CategoryShow = Backbone.CompositeView.extend({
  template: JST['categories/show'],
  className: 'category-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.menu_items(), 'add', this.addMenuItem);
    this.listenTo(this.model.menu_items(), 'change:avg_rating', this.render);
    this.renderMenuItems();
  },

  render: function () {
    var content = this.template({ category: this.model });
    this.$el.html(content);
    this.sortMenuItems();
    this.attachSubviews();
    // this.$el.data('list-id', this.model.id);
    return this;
  },

  addMenuItem: function (menu_item) {
    var view = new WaiterUp.Views.MenuItemShow({ model: menu_item });
    this.addSubview('.menu-items', view);
  },

  renderMenuItems: function () {
    this.model.menu_items().each(this.addMenuItem.bind(this));
  },

  sortMenuItems: function (collection, options) {
    this.model.menu_items().sort();
    var subs = _(this.subviews()['.menu-items']);
    this.subviews()['.menu-items'] = subs.sortBy(function (subview) {
      subview.render();
      return 5 - subview.model.get('avg_rating');
    });
  }
});
