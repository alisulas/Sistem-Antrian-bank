WaiterUp.Views.MenuItemShow = Backbone.CompositeView.extend({

  template: JST['menu_items/show'],
  className: 'menu-item-show',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.comments(), 'add', this.addComment);
    this.renderComments();
  },

  events: {
    'click .comments-heading a': 'toggleComments',
    'click .add-comment a': 'renderCommentForm'
  },

  toggleComments: function () {
    this.$(".comments").toggle();
  },

  render: function () {
    var content = this.template({ menu_item: this.model });
    this.$el.html(content);
    setTimeout( function () {
      this.$('.rating').raty({
        click: this.createRating.bind(this),
        path: 'assets',
        half: true,
        noRatedMsg: 'Not rated yet!',
        score: this.model.get('avg_rating')
      });
    }.bind(this));
    this.$('.comments').hide();
    this.attachSubviews();

    return this;
  },

  addComment: function (comment) {
    var maybeRender = false;

    if (this.subviews('.comments').length === 0) {
      maybeRender = true;
    }
    var view = new WaiterUp.Views.CommentShow({ model: comment })
    this.addSubview('.comments', view);

    if (maybeRender) { this.render(); }
    this.$('.comments').show();
  },

  renderComments: function () {
    this.model.comments().each(this.addComment.bind(this));
  },

  renderCommentForm: function () {
    var view = new WaiterUp.Views.CommentForm({
      model: this.model
    });
    this.addSubview('#comment-form', view);
  },

  createRating: function (score, event) {
    var view = this;
    this.rating = score;
    var newRating = new WaiterUp.Models.Rating({
      menu_item_id: this.model.id,
      score: this.rating
    });

    newRating.save({}, {
      success: function () {
        this.model.fetch()
      }.bind(this),

      error: function (model, response) {
        var error = response.responseJSON.error;
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
