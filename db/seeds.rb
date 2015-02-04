# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: "user", password: "awesome")
provider = User.create(email: "provider", password: "awesome", provider: true)
place = provider.places.create(title: "Starbucks",
        street_address: "865 Market Street C26a",
        city: "San Francisco",
        state: "CA",
        zipcode: "94103",
        country: "United States",
        longitude: 37.783921,
        latitude: -122.4073459)
provider2 = User.create(email: "provider2", password: "awesome", provider: true)
place2 = provider2.places.create(title: "Workshop Cafe",
        street_address: "180 Montgomery Street #100",
        city: "San Francisco",
        state: "CA",
        zipcode: "94104",
        country: "United States",
        longitude: 37.790815,
        latitude: -122.402144)
provider3 = User.create(email: "provider3", password: "awesome", provider: true)
place3 = provider3.places.create(title: "Tu Lan Vietnamese Restaurant",
        street_address: "8 6th Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94103",
        country: "United States",
        longitude: 37.7818066,
        latitude: -122.4104021)

workshop_menu = place2.menus.create(title: "Workshop Cafe's Menu")
workshop_drinks = workshop_menu.categories.create(title: "Drinks")
workshop_lunch = workshop_menu.categories.create(title: "Lunch")
workshop_dinner = workshop_menu.categories.create(title: "Dinner")

workshop_drinks.menu_items.create(title: "Latte", image_url: nil)
workshop_drinks.menu_items.create(title: "Cappucchino", image_url: nil)
workshop_drinks.menu_items.create(title: "Black Coffee", image_url: nil)
workshop_drinks.menu_items.create(title: "Caramel Latte", image_url: nil)
workshop_drinks.menu_items.create(title: "Tea", image_url: nil)
workshop_lunch.menu_items.create(title: "Club Sandwich", image_url: nil)
workshop_lunch.menu_items.create(title: "BLT Salad", image_url: nil)
