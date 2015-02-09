WaiterUp.Views.PlacesIndex = Backbone.View.extend({

  template: JST['places/index'],
  className: 'place-index',

  initialize: function () {
    this.filter = '';
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(this.collection, 'sync', this.runFilter);
  },

  events: {
    'mouseenter .places a':    'startAnimatePlace',
    'mouseleave .places a':    'endAnimatePlace',
    'change .searchbar input': 'fetchCollection',
    // 'keyup .searchbar input': 'fetchCollection'
  },

  fetchCollection: function(event){
    event.preventDefault();

    var filter = this.$('.searchbar input').val();
    this.collection.fetch({ data: { search: filter } });
    this.filter = filter;
    this.$('.searchbar input').focus();
    // this.render();
  },

  render: function () {
    var content = this.template({ places: this.collection });
    this.$el.html(content);
    this.$('.searchbar input').val(this.filter);
    this.$('.searchbar input').focus();

    return this;
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

  remove: function () {
    Backbone.View.prototype.remove.call(this);
    this.collection.each( function (place) {
      var marker = WaiterUp.mapView._markers[place.id];
      WaiterUp.mapView.endBounce(marker);
    })
  },

});
