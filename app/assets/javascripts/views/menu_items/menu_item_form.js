WaiterUp.Views.MenuItemForm = Backbone.CompositeView.extend({
  formShowing: true,

  template: JST['menu_items/form'],

  events: {
    'submit' : 'create',
    'click .close': 'hideForm',
  },

  create: function (event) {
    event.preventDefault();
    var newMenuItem = new WaiterUp.Models.MenuItem({
      title: this.$('input').val(),
      description: this.$('textarea').val()
    });

    newMenuItem.save({}, {
      success: function () {
        this.model.comments().add(newMenuItem);
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
