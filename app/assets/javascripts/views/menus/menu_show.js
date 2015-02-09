WaiterUp.Views.MenuShow = Backbone.CompositeView.extend({

  template: JST['menus/show'],
  className: 'menu-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.categories(), 'add', this.addCategory);
    this.renderCategories();
  },

  render: function () {
    var content = this.template({ menu: this.model });
    this.$el.html(content);
    this.$el.data('list-id', this.model.id);
    this.attachSubviews();

    return this;
  },

  addCategory: function (category) {
    var view = new WaiterUp.Views.CategoryShow({ model: category });
    this.addSubview('.categories', view);
  },

  renderCategories: function () {
    this.model.categories().each(this.addCategory.bind(this));
  },

});
