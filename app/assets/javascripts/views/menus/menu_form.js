WaiterUp.Views.MenuForm = Backbone.CompositeView.extend({
  formShowing: true,

  template: JST['menus/form'],

  events: {
    'click button': 'create',
    'click .close': 'hideForm',
    'click [type="checkbox"]': 'toggleCheckbox',
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
      }.bind(this)
    })
  },

  toggleCheckbox: function (event) {
    var checkbox = $(event.currentTarget);
    if (checkbox.prop('checked')) {
      // generate menu item form
      var menuItemView = new WaiterUp.Views.MenuItemForm({
        model: this.model
      });
      this.addSubview(checkbox.next(), menuItemView);
    } else {
      // remove all present menu items and menu item forms
      this.$(checkbox.next()).empty();
    }
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
    this.$el.prepend($('<a href="javascript:void(0)" class="btn btn-primary add-menu">Create Menu</a>'));
  },
});
