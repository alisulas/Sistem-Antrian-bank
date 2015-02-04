WaiterUp.Views.MapShow = Backbone.View.extend({
  // Initialization
  attributes: {
    id: "map-canvas"
  },

  initialize: function () {
    this.installMap();
    this._markers = {};

    this.listenTo(this.collection, 'add', this.addMarker);
    this.listenTo(this.collection, 'remove', this.removeMarker);
  },

  installMap: function () {
    var mapOptions = {
      center: { lat: 37.7833, lng: -122.4167},
      zoom: 12
    };

    this._map = new google.maps.Map(this.el, mapOptions);
    // this.collection.each(this.addMarker.bind(this));
    this.attachMapListeners();
  },

  attachMapListeners: function () {
    // google.maps.event.addListener(this._map, 'idle', this.search.bind(this));
    // google.maps.event.addListener(this._map, 'click', this.createListing.bind(this));
  },

  // Here is an alternate approach to adding listeners--just a
  // convenience to make adding Google Maps events more "Backbone-esque".
  //
  // attachMapListeners: function () {
  //   var map = this._map;
  //   _.each(this.mapEvents, function (value, key) {
  //     google.maps.event.addListener(map, key, value);
  //   });
  // },
  //
  // mapEvents: {
  //   'idle': function () { this.search.bind(this) },
  //   'click': function () { this.createListing.bind(this) }
  // },

  // Event handlers
  // addMarker: function (place) {
  //   if (this._markers[place.id]) { return };
  //   var view = this;
  //
  //   var latLng = new google.maps.LatLng(
  //     place.get('lat'),
  //     place.get('lng')
  //   );
  //
  //   var marker = new google.maps.Marker({
  //     animation: google.maps.Animation.DROP,
  //     position: latLng,
  //     map: this._map,
  //     title: place.get('name')
  //   });
  //
  //   google.maps.event.addListener(marker, 'click', function (event) {
  //     view.showMarkerInfo(event, marker);
  //   });
  //
  //   this._markers[place.id] = marker;
  // },

  // createListing: function (event) {
  //   var lat = event.latLng.lat();
  //   var lng = event.latLng.lng();
  //   var place = new WaiterUp.Models.Listing({
  //     lat: lat,
  //     lng: lng
  //   });
  //
  //   place.save({}, {
  //     success: function () {
  //       this.collection.add(place);
  //     }.bind(this)
  //   });
  // },

  // search: function () {
  //   // This method will re-fetch the map's collection, using the
  //   // map's current bounds as constraints on latitude/longitude.
  //
  //   var mapBounds = this._map.getBounds();
  //   var ne = mapBounds.getNorthEast();
  //   var sw = mapBounds.getSouthWest();
  //
  //   var filterData = {
  //     lat: [sw.lat(), ne.lat()],
  //     lng: [sw.lng(), ne.lng()]
  //   };
  //
  //   this.collection.fetch({
  //     data: { filter_data: filterData }
  //   });
  // },
  //
  // removeMarker: function (place) {
  //   var marker = this._markers[place.id];
  //   marker.setMap(null);
  //   delete this._markers[place.id];
  // },

  showMarkerInfo: function (event, marker) {
    // This event will be triggered when a marker is clicked. Right now it simply
    // opens an info window with the title of the marker. However, you could get
    // fancier if you wanted (maybe use a template for the content of the window?)

    var infoWindow = new google.maps.InfoWindow({
      content: marker.title
    });

    infoWindow.open(this._map, marker);
  },

  toggleBounce: function (marker) {
    if (marker.getAnimation() != null) {
      marker.setAnimation(null);
    } else {
      marker.setAnimation(google.maps.Animation.BOUNCE);
    }
  }
});
