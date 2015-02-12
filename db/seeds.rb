def random_price
  rand(3.0..15.0).round(2)
end

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

provider4 = User.create(email: "provider4", password: "awesome", provider: true)
place4 = provider4.places.create(title: "Toast Eatery",
        street_address: "1601 Polk Street",
        description: "Homestyle breakfast & lunch spot",
        city: "San Francisco",
        state: "CA",
        zipcode: "94109",
        country: "United States",
        latitude: 37.7903671,
        longitude: -122.4201642)

provider5 = User.create(email: "provider5", password: "awesome", provider: true)
place5 = provider5.places.create(title: "Sweet Maple",
        street_address: "2101 Sutter Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94115",
        country: "United States")

place6 = provider3.places.create(title: "Cafe Flore",
        street_address: "2298 Market Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94114",
        country: "United States")

place7 = provider3.places.create(title: "La Traviata",
        street_address: "2854 Mission St",
        description: "Mexican street eats",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place8 = provider3.places.create(title: "Beretta",
        street_address: "1199 Valencia St",
        description: "Lively spot with a modern Italian menu",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place9 = provider3.places.create(title: "Taquerias El Farolito",
        street_address: "2779 Mission St",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place10 = provider3.places.create(title: "Pollo Campero",
        street_address: "2740 Mission St",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place11 = provider3.places.create(title: "Ritual Coffee Roasters",
        description: "Fart-to-cup Cafe",
        street_address: "1026 Valencia St",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place12 = provider3.places.create(title: "Atlas Cafe",
        street_address: "3049 20th St",
        description: "Coffee shop with unique sandwiches",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place13 = provider3.places.create(title: "Dalfina Restaurant",
        street_address: "3621 18th St",
        description: "Bustling Italian restaurant",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place14 = provider3.places.create(title: "Rosamunde Sausage Grill",
        street_address: "2832 Mission St",
        description: "German sausage specialist",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place8 = provider3.places.create(title: "Foreign Cinema",
        street_address: "2534 Mission St",
        description: "Hip outdoor dining & movie screening",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place8 = provider3.places.create(title: "Mission Chinese Food",
        street_address: "2234 Mission St",
        description: "Hip Sichuan dining",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place8 = provider3.places.create(title: "Ruth's Chris Steak House",
        street_address: "1601 Van Ness Ave",
        description: "Upscale American steakhouse chain",
        city: "San Francisco",
        state: "CA",
        zipcode: "94109",
        country: "United States",
        latitude: 37.790517,
        longitude: -122.42265)

place8 = provider3.places.create(title: "Venticello",
        street_address: "1257 Taylor St",
        description: "Northen Italian cooking in a cozy space",
        city: "San Francisco",
        state: "CA",
        zipcode: "94108",
        country: "United States",
        latitude: 37.794216,
        longitude: -122.413246)

workshop_menu =   place2.menus.create(title: "Workshop Cafe's Menu")
workshop_drinks = workshop_menu.categories.create(title: "Drinks")
workshop_lunch =  workshop_menu.categories.create(title: "Lunch")
workshop_dinner = workshop_menu.categories.create(title: "Dinner")

workshop_drinks.menu_items.create(title: "Latte", image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR21VIkWLju-dQ8BYA5Bk9K_5LeCnaOHK_n2FTDGfE1HAlyJ8ocyg", description: "tasty stuff", price: random_price)
workshop_drinks.menu_items.create(
  title: "Cappucchino",
  image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRKQsNNDY4tpKMM4iCmsLH5H1qVbWnAsywb0gwFqikY9md1KDCOahU03Q",
  description: "Like latte but with less milk",
  price: random_price)
workshop_drinks.menu_items.create(
  title: "Black Coffee",
  image_url: nil, description: "What you need to finish your final project",
  price: random_price)
workshop_drinks.menu_items.create(title: "Caramel Latte", image_url: nil, price: random_price)
workshop_drinks.menu_items.create(title: "Tea", image_url: nil, price: random_price)

workshop_lunch.menu_items.create(title: "Club Sandwich", image_url: nil, price: random_price)
workshop_lunch.menu_items.create(
  title: "BLT Salad",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaSwefCN_R51TSjJc7UGcp0lrB0vQB9MGoKMFe3qZj9FtjXp8SWHIA5A",
  description: "Your usual BLT but with less bread. This is SF, we take healthy to another level.",
  price: random_price)

tu_lan_menu =   place3.menus.create(title: "Menu")
tu_lan_br =     tu_lan_menu.categories.create(title: "Breakfast")
tu_lan_lunch =  tu_lan_menu.categories.create(title: "Lunch")
tu_lan_dinner = tu_lan_menu.categories.create(title: "Dinner")

tu_lan_br.menu_items.create(title: "Eggs and Bacon", image_url: nil, price: random_price)
tu_lan_br.menu_items.create(title: "Toast", image_url: nil, price: random_price)
tu_lan_br.menu_items.create(title: "Grits", image_url: nil, price: random_price)
tu_lan_br.menu_items.create(title: "Hashbrowns", image_url: nil, price: random_price)
tu_lan_br.menu_items.create(title: "Oats", image_url: nil, price: random_price)

tu_lan_lunch.menu_items.create(title: "Fried Calamari", image_url: nil, price: random_price)
tu_lan_lunch.menu_items.create(title: "Fried Mozzarella", image_url: nil, price: random_price)
tu_lan_lunch.menu_items.create(title: "Chicken Wings", image_url: nil, price: random_price)
tu_lan_lunch.menu_items.create(title: "Spinach Pie", description: "Most delicious meal you've ever had.", image_url: nil, price: random_price)

tu_lan_dinner.menu_items.create(title: "Crab Cakes", image_url: nil, price: random_price)
tu_lan_dinner.menu_items.create(title: "Potato Crusted Salmon", image_url: nil, price: random_price)

place4_menu =   place4.menus.create(title: "Menu")
place4_br =     place4_menu.categories.create(title: "Breakfast")
place4_lunch =  place4_menu.categories.create(title: "Lunch")
place4_dinner = place4_menu.categories.create(title: "Dinner")

place4_br.menu_items.create(title: "Hashbrowns", image_url: nil, price: random_price)
place4_br.menu_items.create(title: "Toast", image_url: nil, price: random_price)
place4_br.menu_items.create(title: "Grits", image_url: nil, price: random_price)
place4_br.menu_items.create(title: "Oats", image_url: nil, price: random_price)
place4_dinner.menu_items.create(title: "Crab Cakes", image_url: nil, price: random_price)
place4_dinner.menu_items.create(title: "Potato Crusted Salmon", image_url: nil, price: random_price)
