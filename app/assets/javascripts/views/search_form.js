WaiterUp.Views.SearchForm = Backbone.View.extend({
  formShowing: true,

  template: JST['searches/form'],

  events: {
    'submit' : 'create'
  },

  create: function (event) {
    event.preventDefault();
    var newComment = new WaiterUp.Models.Comment({
      body: this.$('input').val(),
      menu_item_id: this.model.id
    });

    newComment.save({}, {
      success: function () {
        this.model.comments().add(newComment);
        this.hideForm();
      }.bind(this)
    })

  },

  initialize: function(){
    this.render();
  },

  render: function(){
    var content = this.template();
    this.$el.html( content );

    return this
  },
});
