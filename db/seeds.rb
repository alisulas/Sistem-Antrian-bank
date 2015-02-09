user = User.create(email: "user", password: "awesome")
provider = User.create(email: "provider", password: "awesome", provider: true)
place = provider.places.create(title: "Starbucks",
        description: "Iconic Seattle-base coffeehouse chain",
        street_address: "1231 Market Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94103",
        country: "United States",
        latitude: 37.7814707,
        longitude: -122.4079559)
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

place4 = provider3.places.create(title: "Toast Eatery",
        street_address: "1601 Polk Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94109",
        country: "United States",
        latitude: 37.7903671,
        longitude: -122.4201642)

place5 = provider3.places.create(title: "Sweet Maple",
        street_address: "2101 Sutter Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94115",
        country: "United States",
        latitude: 37.7852098,
        longitude: -122.4315502)

place6 = provider3.places.create(title: "Cafe Flore",
        street_address: "2298 Market Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94114",
        country: "United States",
        latitude: 37.764656,
        longitude: -122.4329428)

place7 = provider3.places.create(title: "App Academy",
        street_address: "1061 Market St",
        city: "San Francisco",
        state: "CA",
        zipcode: "94103",
        country: "United States",
        latitude: 37.7810556,
        longitude: -122.4114551)

workshop_menu =   place2.menus.create(title: "Workshop Cafe's Menu")
workshop_drinks = workshop_menu.categories.create(title: "Drinks")
workshop_lunch =  workshop_menu.categories.create(title: "Lunch")
workshop_dinner = workshop_menu.categories.create(title: "Dinner")

workshop_drinks.menu_items.create(title: "Latte", image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR21VIkWLju-dQ8BYA5Bk9K_5LeCnaOHK_n2FTDGfE1HAlyJ8ocyg", description: "tasty stuff")
workshop_drinks.menu_items.create(title: "Cappucchino", image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRKQsNNDY4tpKMM4iCmsLH5H1qVbWnAsywb0gwFqikY9md1KDCOahU03Q", description: "Like latte but with less milk")
workshop_drinks.menu_items.create(title: "Black Coffee", image_url: nil, description: "What you need to finish your final project")
workshop_drinks.menu_items.create(title: "Caramel Latte", image_url: nil)
workshop_drinks.menu_items.create(title: "Tea", image_url: nil)

workshop_lunch.menu_items.create(title: "Club Sandwich", image_url: nil)
workshop_lunch.menu_items.create(title: "BLT Salad", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaSwefCN_R51TSjJc7UGcp0lrB0vQB9MGoKMFe3qZj9FtjXp8SWHIA5A",
  description: "Your usual BLT but with less bread. This is SF, we take healthy to another level.")

tu_lan_menu =   place3.menus.create(title: "Menu")
tu_lan_br =     tu_lan_menu.categories.create(title: "Breakfast")
tu_lan_lunch =  tu_lan_menu.categories.create(title: "Lunch")
tu_lan_dinner = tu_lan_menu.categories.create(title: "Dinner")

tu_lan_br.menu_items.create(title: "Eggs and Bacon", image_url: nil)
tu_lan_br.menu_items.create(title: "Toast", image_url: nil)
tu_lan_br.menu_items.create(title: "Grits", image_url: nil)
tu_lan_br.menu_items.create(title: "Hashbrowns", image_url: nil)
tu_lan_br.menu_items.create(title: "Oats", image_url: nil)

tu_lan_lunch.menu_items.create(title: "Fried Calamari", image_url: nil)
tu_lan_lunch.menu_items.create(title: "Fried Mozzarella", image_url: nil)
tu_lan_lunch.menu_items.create(title: "Chicken Wings", image_url: nil)
tu_lan_lunch.menu_items.create(title: "Spinach Pie", description: "Most delicious meal you've ever had.", image_url: nil)

tu_lan_dinner.menu_items.create(title: "Crab Cakes", image_url: nil)
tu_lan_dinner.menu_items.create(title: "Potato Crusted Salmon", image_url: nil)

place4_menu =   place4.menus.create(title: "Menu")
place4_br =     place4_menu.categories.create(title: "Breakfast")
place4_lunch =  place4_menu.categories.create(title: "Lunch")
place4_dinner = place4_menu.categories.create(title: "Dinner")

place4_br.menu_items.create(title: "Hashbrowns", image_url: nil)
place4_br.menu_items.create(title: "Toast", image_url: nil)
place4_br.menu_items.create(title: "Grits", image_url: nil)
place4_br.menu_items.create(title: "Oats", image_url: nil)
place4_dinner.menu_items.create(title: "Crab Cakes", image_url: nil)
place4_dinner.menu_items.create(title: "Potato Crusted Salmon", image_url: nil)
