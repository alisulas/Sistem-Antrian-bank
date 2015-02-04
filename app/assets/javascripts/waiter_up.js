window.WaiterUp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  Utils: {},
  initialize: function() {
    new WaiterUp.Routers.Router();
    // WaiterUp.mapView = new WaiterUp.Views.MapShow({});
    Backbone.history.start();
  }
};
