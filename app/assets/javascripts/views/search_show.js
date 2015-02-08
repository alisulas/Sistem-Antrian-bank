// WaiterUp.Views.MapShow = Backbone.View.extend({
//   attributes: {
//     id: "searchbar"
//   },
//
//   initialize: function () {
//     this.installMap();
//     this._markers = {};
//
//     this.listenTo(this.collection, 'add', this.addMarker);
//     this.listenTo(this.collection, 'remove', this.removeMarker);
//   },
//
//   installMap: function () {
//     var mapOptions = {
//       center: { lat: 37.770274, lng: -122.4144611},
//       zoom: 14
//     };
//
//     this._map = new google.maps.Map(this.el, mapOptions);
//     this.collection.each(this.addMarker.bind(this));
//     // this.attachMapListeners();
//   },
// });
