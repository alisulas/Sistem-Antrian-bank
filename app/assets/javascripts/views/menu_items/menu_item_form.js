WaiterUp.Views.MenuItemForm = Backbone.CompositeView.extend({
  formShowing: true,

  template: JST['menu_items/form'],

  events: {
    'submit' : 'create',
    'click .close': 'hideForm',
    'blur input.menu-item-name': 'updateTitle',
    'blur input.menu-item-price': 'updatePrice',
    'blur textarea': 'updateDescription',
  },

  updateTitle: function (event) {
    var $target = $(event.currentTarget);
    this.model.set('title', $target.val());
    this.model.save({}, {
      success: function () {
        setTimeout(function() {
          $target.next().toggleClass('animated bounceIn');
          setTimeout(function () {
            $target.next().toggleClass('animated bounceIn');
          }, 1000)
        }, 50);
      },
      silent: true
    });
  },

  updatePrice: function (event) {
    var $target = $(event.currentTarget);
    this.model.set('price', $target.val());
    this.model.save({}, {
      success: function () {
        setTimeout(function() {
          $target.next().toggleClass('animated bounceIn');
          setTimeout(function () {
            $target.next().toggleClass('animated bounceIn');
          }, 1000)
        }, 50);
      },
      silent: true
    });
  },

  updateDescription: function (event) {
    var $target = $(event.currentTarget);
    this.model.set('description', $target.val());
    this.model.save({}, {
      success: function () {
        setTimeout(function() {
          $target.next().toggleClass('animated bounceIn');
          setTimeout(function () {
            $target.next().toggleClass('animated bounceIn');
          }, 1000)
        }, 50);
      },
      silent: true
    })
  },

  create: function (event) {
    event.preventDefault();
    var newMenuItem = new WaiterUp.Models.MenuItem({
      title: this.$('input.menu-item-name').val(),
      price: this.$('input.menu-item-price').val(),
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
    this.model.destroy();
    this.formShowing = false;
    this.render();
  },
});
