WaiterUp.Views.MenuForm = Backbone.CompositeView.extend({
  formShowing: true,

  template: JST['menus/form'],

  events: {
    'click button.create-menu': 'create',
    'click .close': 'hideForm',
    'click [type="checkbox"]': 'toggleCheckbox',
    'blur input.exists': 'updateMenu',
  },

  initialize: function (options) {
    this.menus = options.menus;
    this.listenTo(this.model, 'sync', this.render)
  },

  create: function (event) {
    event.preventDefault();
    this.model = new WaiterUp.Models.Menu({
      title: this.$('input').val()
    });
    this.model.save({}, {
      success: function () {
        this.menus.add(this.model);
        this.renderCategoriesForm(event);
        this.$('input').addClass('exists');
        this.$('.create-menu')[0].disabled = true;
        this.$('.create-menu').hide();
      }.bind(this)
    })
  },

  toggleCheckbox: function (event) {
    var checkbox = $(event.currentTarget);
    // need to get current category if there's one
    var newCategory;
    if (checkbox.prop('checked')) {
      checkbox.next().append($('<a href="javascript:void(0)" class="btn btn-primary add-menu-item">add menu item</a>'))
      // create category with title checkbox.val()
      newCategory = new WaiterUp.Models.Category({
        menu_id: this.model.id,
        title: checkbox.val()
      })
      newCategory.save({}, {
        success: function () {
          checkbox.attr('data-id', newCategory.id);
        }
      });
    } else {
      newCategory = new WaiterUp.Models.Category({ id: checkbox.attr('data-id') })
      newCategory.destroy({
        success: function () {
          checkbox.attr('data-id', '');
        }
      });
      this.$(checkbox.next()).empty();
    }
  },

  updateMenu: function () {
    this.model.set({ title: $('input.menu-title-form').val() });
    this.model.save({
      success: function () {
        $('input.menu-title-form').toggleClass('green-bg-flash');
        setInterval(function() {
          $('input.menu-title-form').toggleClass('green-bg-flash');
        }, 500)
      }
    });
  },

  renderCategoriesForm: function (event) {
    var $target = $(event.currentTarget);

    var categories = ["Drinks", "Breakfast", "Lunch",
    "Dinner", "Appetizers", "Dessers"];

    _(categories).each(function (category) {
      var categoryView;

      var categoryView = new WaiterUp.Views.CategoryForm({
        model: new WaiterUp.Models.Category({
          menu_id: this.model.id,
          title: category
        })
      });

      this.addSubview($target.parent(), categoryView);

    }.bind(this));
    $target.parent().append($('<a href="javascript:void(0)" class="btn btn-danger destroy-menu">Cancel and Go Back</a>'));
    $target.parent().append($('<a href="javascript:void(0)" class="btn btn-success done-menu">Done</a>'));
  },

  render: function () {
    var content = this.template();

    if (this.formShowing) {
      this.$el.html(content);
    } else {
      this.$el.empty();
    }
    this.delegateEvents();
    this.attachSubviews();
    return this;
  },

  hideForm: function () {
    this.formShowing = false;
    this.render();
    this.$el.prepend($('<a href="javascript:void(0)" class="btn btn-primary add-menu">Create Menu</a>'));
  },
});
