WaiterUp.Views.DashboardShow = Backbone.View.extend({

  template: JST['dashboard/show'],
  className: 'dashboard-show',

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function () {
    var view = this;

    var content = this.template({ menus: this.collection });
    this.$el.html(content);

    return this;
  }
});
