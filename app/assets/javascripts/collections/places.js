WaiterUp.Collections.Places = Backbone.Collection.extend({
  url: 'api/places',
  model: WaiterUp.Models.Place,

  getOrFetch: function (id) {
    var place = this.get(id);

    if(!place) {
      place = new WaiterUp.Models.Place({ id: id });
      place.fetch({
        success: function () {
          this.add(place);
        }.bind(this)
      });
    } else {
      place.fetch();
    }

    return place;
  }
});


WaiterUp.Collections.places = new WaiterUp.Collections.Places
