WaiterUp.Views.MenuForm = Backbone.CompositeView.extend({
  formShowing: true,

  template: JST['menus/form'],

  events: {
    'click button.create-menu': 'create',
    'click .close': 'hideForm',
    'blur input.exists': 'updateMenu',
    'click a.done-menu': 'redirectHome',
    'click a.destroy-menu': 'destroyMenu',
  },

  initialize: function (options) {
    this.menus = options.menus;
    this.listenTo(this.model, 'sync', this.render);
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

  redirectHome: function () {
    Backbone.history.navigate('/', { trigger: true });
  },

  destroyMenu: function () {
    this.model.destroy();
  },

  updateMenu: function () {
    var that = this;
    this.model.set({ title: $('input.menu-title-form').val() });
    this.model.save({}, {
      success: function () {
        setTimeout(function() {
          $('input.menu-title-form').toggleClass('animated slideUp');
          setTimeout(function () {
            $('input.menu-title-form').toggleClass('animated slideUp');
          }, 1000)
        }, 50);
      },
      silent: true
    });
  },

  renderCategoriesForm: function (event) {
    var $target = $(event.currentTarget);

    var categories = ["Drinks", "Breakfast", "Lunch",
    "Dinner", "Appetizers", "Dessers"];


    _(categories).each(function (category) {
      var categoryView;
      var newCategory = new WaiterUp.Models.Category({
        menu_id: this.model.id,
        title: category,
        menuItems: this.menuItems
      });

      var categoryView = new WaiterUp.Views.CategoryForm({
        model: newCategory,
        collection: newCategory.menuItems(),
        menu_id: this.model.id
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
