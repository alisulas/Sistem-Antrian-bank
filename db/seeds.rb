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
place = provider2.places.create(title: "Workshop Cafe",
        street_address: "180 Montgomery Street #100",
        city: "San Francisco",
        state: "CA",
        zipcode: "94104",
        country: "United States",
        longitude: 37.790815,
        latitude: -122.402144)
