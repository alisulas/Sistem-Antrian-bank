window.WaiterUp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  Utils: {},
  initialize: function() {
    if (CURRENT_USER && CURRENT_USER.provider) {
      new WaiterUp.ProviderRouters.Router();
    } else {
      new WaiterUp.Routers.Router();
    }

    Backbone.history.start();
  }
};
