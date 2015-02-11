WaiterUp.Views.CategoryForm = Backbone.CompositeView.extend({
  initialize: function () {
    // this.menuItems = options.menuItems;
  },

  formShowing: true,
  className: 'category-form',

  template: JST['categories/form'],

  events: {
    'submit' : 'create',
    'click .close': 'hideForm',
    'click .add-menu-item': 'renderMenuItemForm',
    'click [type="checkbox"]': 'toggleCheckbox',
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
    });
  },

  toggleCheckbox: function (event) {
    var checkbox = $(event.currentTarget);
    if (checkbox.prop('checked')) {
      // create category with title checkbox.val()
      // newCategory = new WaiterUp.Models.Category({
      //   menu_id: this.model.id,
      //   title: checkbox.val()
      // })
      this.model.save({}, {
        success: function () {
          checkbox.attr('data-id', this.model.id);
          checkbox.next().append($('<a href="javascript:void(0)" class="btn btn-default add-menu-item">add menu item</a>'))
        }.bind(this)
      });
    } else {
      var newCategory = new WaiterUp.Models.Category({
        id: checkbox.attr('data-id')
      })
      newCategory.destroy({
        success: function () {
          checkbox.attr('data-id', '');
        }
      });
      this.$(checkbox.next()).empty();
    }
  },

  renderMenuItemForm: function (event) {
    var $target = $(event.currentTarget);
    var menuItem = new WaiterUp.Models.MenuItem({
      category_id: this.model.id,
      title: "Menu Item 1"
    });
    menuItem.save();

    this.collection.add(menuItem);

    var menuItemView = new WaiterUp.Views.MenuItemForm({
      model: menuItem
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
