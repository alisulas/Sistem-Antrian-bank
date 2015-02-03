window.WaiterUp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  Utils: {},
  initialize: function() {
    new WaiterUp.Routers.Router();
    Backbone.history.start();
  }
};
