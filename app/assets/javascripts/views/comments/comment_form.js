WaiterUp.Views.CommentForm = Backbone.View.extend({
  formShowing: true,

  template: JST['comments/form'],

  events: {
    'submit' : 'create',
    'click .close': 'hideForm',
  },

  create: function (event) {
    event.preventDefault();
    var newComment = new WaiterUp.Models.Comment({
      body: this.$('textarea').val(),
      menu_item_id: this.model.id
    });
    newComment.save({}, {
      success: function () {
        this.model.comments().add(newComment);
        this.hideForm();
      }.bind(this)
    })

  },

  render: function () {
    var content = this.template();
    if (this.formShowing) {
      this.$el.html(content);
    } else {
      this.$el.empty();
    }

    this.delegateEvents();
    return this;
  },

  hideForm: function () {
    this.formShowing = false;
    this.render();
  },
});
