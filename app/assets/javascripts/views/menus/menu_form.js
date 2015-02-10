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
    if (checkbox.prop('checked')) {
      checkbox.next().append($('<a href="javascript:void(0)" class="btn btn-primary add-menu-item">add menu item</a>'))

    } else {

      this.$(checkbox.next()).empty();
    }
  },

  createCategory: function () {

  },

  destroyCategory: function () {

  },

  updateMenu: function (event) {
    event.preventDefault();
    this.model.set({ title: $(event.currentTarget).val() });
    this.model.save();
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
