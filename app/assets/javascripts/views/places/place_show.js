WaiterUp.Views.PlaceShow = Backbone.View.extend({

  template: JST['places/show'],
  className: 'place-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    var content = this.template({ place: this.model });
    this.$el.html(content);
    return this;
  }

});
