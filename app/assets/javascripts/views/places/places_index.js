WaiterUp.Views.PlacesIndex = Backbone.View.extend({

  template: JST['places/index'],
  className: 'place-index',

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
  },

  events: {
    'mouseenter .places a': 'startAnimatePlace',
    'mouseleave .places a': 'endAnimatePlace',
    'click .searchbar button': 'runFilter'
  },

  startAnimatePlace: function (event) {
    var placeId = $(event.currentTarget).data('place-id');
    var marker = WaiterUp.mapView._markers[placeId];
    WaiterUp.mapView.startBounce(marker);
  },

  endAnimatePlace: function (event) {
    var placeId = $(event.currentTarget).data('place-id');
    var marker = WaiterUp.mapView._markers[placeId];
    WaiterUp.mapView.endBounce(marker);
  },

  destroyPlace: function (event) {
    var placeId = $(event.currentTarget).data('place-id');
    var place = this.collection.get(placeId);

    place.destroy();
  },

  runFilter: function(event){
    event.preventDefault();

    this.filter = this.$('.searchbar input').val();
    this.render();
  },

  render: function () {
    // var filteredList = this.collection.where({ title: this.filter });
    // this.collection.reset(filteredList);

    var content = this.template({ places: this.collection });
    this.$el.html(content);

    return this;
  },

  remove: function () {
    Backbone.View.prototype.remove.call(this);
    this.collection.each( function (place) {
      var marker = WaiterUp.mapView._markers[place.id];
      WaiterUp.mapView.endBounce(marker);
    })
  },

});
