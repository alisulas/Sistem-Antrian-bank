WaiterUp.Views.MenuItemShow = Backbone.CompositeView.extend({

  template: JST['menu_items/show'],
  className: 'menu-item-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.comments(), 'add', this.addComment);
    this.renderComments();
  },

  events: {
    'click .rating': 'createRating',
    'click .comments-heading': 'toggleComments'
  },

  toggleComments: function () {
    this.$(".comments").toggle();
  },

  render: function () {
    var content = this.template({ menu_item: this.model });
    this.$el.html(content);
    this.$el.data('list-id', this.model.id);
    setTimeout( function () {
      this.$('.rating').raty({
        path: 'assets',
        half: true,
        noRatedMsg: 'Not rated yet!',
        score: this.model.get('avg_rating')
      });
    }.bind(this));
    this.$('.comments').hide();

    return this;
  },

  addComment: function (comment) {
    var view = new WaiterUp.Views.CommentShow({ model: comment })
    this.addSubview('.comments', view);
  },

  renderComments: function () {
    this.model.comments().each(this.addComment.bind(this));
  },

  createRating: function () {
    this.rating = this.$('.rating').raty('score');
    var newRating = new WaiterUp.Models.Rating({
      menu_item_id: this.model.id,
      score: this.rating
    });

    newRating.save({}, {
      success: function () {
        this.model.fetch();
      }.bind(this),
      error: function (model, response) {
        var error = response.responseJSON.error;
        debugger
        if (error === "rated") {
          alert("Already rated!");
        } else {
          alert("Must be logged in as a user!");
        }
        this.render();
      }.bind(this),
    });
  }

});
