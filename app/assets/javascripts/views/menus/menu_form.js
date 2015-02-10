WaiterUp.Views.MenuForm = Backbone.View.extend({
  formShowing: true,

  template: JST['menus/form'],

  events: {
    'click button': 'create',
    'click .close': 'hideForm',
    'click [type="checkbox"]': 'clicked',
  },

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render)
  },

  create: function (event) {
    event.preventDefault();
    var newMenu = new WaiterUp.Models.Menu({
      title: this.$('input').val()
    });
    newMenu.save({}, {
      success: function () {
        this.model.menus().add(newMenu);
        this.hideForm();
      }.bind(this),
      error: function (model, response) {
        debugger;
      }
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
