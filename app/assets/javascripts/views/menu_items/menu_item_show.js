WaiterUp.Views.MenuItemShow = Backbone.CompositeView.extend({

  template: JST['menu_items/show'],
  className: 'menu-item-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    var content = this.template({ menu_item: this.model });
    this.$el.html(content);
    this.$el.data('list-id', this.model.id);

    return this;
  }

});
