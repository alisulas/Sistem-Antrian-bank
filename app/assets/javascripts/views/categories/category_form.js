WaiterUp.Views.CategoryForm = Backbone.CompositeView.extend({
  initialize: function () {
  },

  formShowing: true,
  className: 'category-form',

  template: JST['categories/form'],

  events: {
    'submit' : 'create',
    'click .close': 'hideForm',
    'click .add-menu-item': 'renderMenuItemForm',
  },

  create: function (event) {
    event.preventDefault();
    var newCategory = new WaiterUp.Models.Category({
      title: this.title
    });

    newCategory.save({}, {
      success: function () {
        this.model.comments().add(newCategory);
        this.hideForm();
      }.bind(this)
    })

  },

  renderMenuItemForm: function (event) {
    var $target = $(event.currentTarget);
    var menuItemView = new WaiterUp.Views.MenuItemForm({
      model: this.model
    });
    this.addSubview($target.parent(), menuItemView);
  },

  render: function () {
    var content = this.template({ category: this.model });

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
