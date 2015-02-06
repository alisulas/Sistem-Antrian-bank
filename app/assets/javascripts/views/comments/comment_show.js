WaiterUp.Views.CommentShow = Backbone.CompositeView.extend({

  template: JST['comments/show'],
  className: 'comment-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    var content = this.template({ comment: this.model });
    this.$el.html(content);

    return this;
  },
});
