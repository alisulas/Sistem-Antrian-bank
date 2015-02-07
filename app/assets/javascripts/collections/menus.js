WaiterUp.Collections.Menus = Backbone.Collection.extend({
  model: WaiterUp.Models.Menu,

  getOrFetch: function (id) {
    var place = this.get(id);

    if(!place) {
      place = new WaiterUp.Models.Places({ id: id });
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


WaiterUp.Collections.menus = new WaiterUp.Collections.Menus
