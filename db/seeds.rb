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
        description: "Iconic Seattle-base coffeehouse chain",
        street_address: "865 Market Street C26a",
        city: "San Francisco",
        state: "CA",
        zipcode: "94103",
        country: "United States",
        latitude: 37.783921,
        longitude: -122.4073459)
provider2 = User.create(email: "provider2", password: "awesome", provider: true)
place2 = provider2.places.create(title: "Workshop Cafe",
        description: "Coffee shop catering to laptop workers",
        street_address: "180 Montgomery Street #100",
        city: "San Francisco",
        state: "CA",
        zipcode: "94104",
        country: "United States",
        latitude: 37.790815,
        longitude: -122.402144)
provider3 = User.create(email: "provider3", password: "awesome", provider: true)
place3 = provider3.places.create(title: "Tu Lan Vietnamese Restaurant",
        street_address: "8 6th Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94103",
        country: "United States",
        latitude: 37.7818066,
        longitude: -122.4104021)

provider3.places.create(title: "Toast Eatery",
        street_address: "1601 Polk Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94109",
        country: "United States",
        latitude: 37.7903671,
        longitude: -122.4201642)

provider3.places.create(title: "Sweet Maple",
        street_address: "2101 Sutter Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94115",
        country: "United States",
        latitude: 37.7852098,
        longitude: -122.4315502)

workshop_menu = place2.menus.create(title: "Workshop Cafe's Menu")
workshop_drinks = workshop_menu.categories.create(title: "Drinks")
workshop_lunch = workshop_menu.categories.create(title: "Lunch")
workshop_dinner = workshop_menu.categories.create(title: "Dinner")

workshop_drinks.menu_items.create(title: "Latte", image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR21VIkWLju-dQ8BYA5Bk9K_5LeCnaOHK_n2FTDGfE1HAlyJ8ocyg", description: "tasty stuff")
workshop_drinks.menu_items.create(title: "Cappucchino", image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRKQsNNDY4tpKMM4iCmsLH5H1qVbWnAsywb0gwFqikY9md1KDCOahU03Q", description: "Like latte but with less milk")
workshop_drinks.menu_items.create(title: "Black Coffee", image_url: nil, description: "What you need to finish your final project")
workshop_drinks.menu_items.create(title: "Caramel Latte", image_url: nil)
workshop_drinks.menu_items.create(title: "Tea", image_url: nil)
workshop_lunch.menu_items.create(title: "Club Sandwich", image_url: nil)
workshop_lunch.menu_items.create(
  title: "BLT Salad",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaSwefCN_R51TSjJc7UGcp0lrB0vQB9MGoKMFe3qZj9FtjXp8SWHIA5A",
  description: "Your usual BLT but with less bread. This is SF, we take healthy to another level.")
