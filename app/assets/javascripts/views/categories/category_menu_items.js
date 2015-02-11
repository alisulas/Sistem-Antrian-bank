WaiterUp.Views.CategoryMenuItems = Backbone.CompositeView.extend({
  render: function () {
    this.$el.html($('<a href="javascript:void(0)" class="btn btn-default add-menu-item">add menu item</a>'));

    return this;
  }
});
