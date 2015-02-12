def random_price
  rand(3.0..15.0).round(2)
end

lunch_menu = [
  ['Glazed Atlantic Salmon',
  'Cedar Planked and Glazed with Passion Fruit Infused BBQ Sauce Parmesan Truffle Mashed Potatoes and Grilled Asparagus', 28],

  ['Surf and Turf',
  '7oz Hand Cut Filet Mignon and Grilled Shrimp Parmesan Truffle Mashed Potatoes and Grilled Asparagus', 40],

  ['Mushroom Crusted New York Strip',
  '14oz New York Strip Steak with a Grilled Mushroom Duxelle Crust Parmesan Truffle Mashed Potatoes and Grilled Asparagus', 35],

  ['Create Your Own Garden Bar',
  'Make your very own salad sensation. Spring mix, fresh garden greens, crisp vegetables, premium cheeses and toppings, our famous croutons, and a variety of dressings.', random_price],

  ['Grilled Chicken Salad',
  'Grilled chicken, fresh salad mix, peas, Parmesan, bacon, tomatoes, cucumbers, carrots, and croutons.', random_price],

  ['Spicy Fish Tacos Combo',
  'Filled with grilled tilapia, lettuce, cheddar, pico de gallo, sour cream, and cilantro with spicy ranch.', random_price],

  ['Garden Bar & Bowl of Soup',
  'Enjoy a bowl of chicken noodle, chicken tortilla, or broccoli & cheese.', random_price],

  ['Veggie Trio Combo',
  'Choose three of our delicious sides to create your own fresh meal.', random_price],

  ['Jumbo Lump Crab Cake Combo',
  'Made from fresh, premium jumbo lump crab meat and seared to a golden brown.', random_price],

  ['Santa Fe Chicken Quesadilla Combo',
  'Seasoned chicken with grilled peppers and onions, feta, and Swiss with chile sauce.', random_price],

  ['Baja Chicken Tacos Combo',
  'Seasoned chicken with feta and Swiss, grilled peppers and onions with our spicy ranch.', random_price],

  ['Chicken Fresco',
  'A juicy, all-natural grilled chicken breast with vine-ripened tomatoes, lemon butter, and a splash of balsamic vinaigrette. Served with your choice of two sides or one side paired with our Garden Bar.', random_price],

  ['Hickory Bourbon Chicken',
  'A tender chicken breast topped with a hickory bourbon barbecue glaze with a sweet, smoky taste. Served with choice of two sides or one side paired with our Garden Bar.', random_price],

  ['Smoky Mountain Chicken',
  'Fresh grilled chicken smothered with smoky barbecue sauce and topped with Swiss, cheddar, and applewood bacon. Served with choice of two sides or one side paired with our Garden Bar.', random_price],

  ['Chicken Bella',
  'Sautéed baby portabella mushrooms and artichokes in a Parmesan cream sauce over a fresh, grilled chicken breast. Served with your choice of two sides or one side paired with our Garden Bar.', random_price],

  ['Southern Style Chicken Tender Dinner',
  'All white-meat chicken, dipped in our signature batter and fried to a crisp golden brown. Served with fries and a side of honey mustard.', random_price],

  ['Chicken Fresco',
  'All-natural grilled chicken finished with vine-ripened tomatoes, lemon butter, and balsamic vinaigrette.', random_price],

  ['Parmesan Shrimp Pasta',
  'Tender, spicy shrimp are sautéed and served over penne tossed in Parmesan cream sauce with diced tomatoes.', random_price],

  ['Creole Catch', 'Flaky, mild white fish seasoned with Creole spices and broiled.', random_price],

  ["Ruby's Classic Burger*",
    'The American classic, perfected.', random_price],

  ['Avocado Turkey Burger',
  'Fresh avocado, Swiss cheese, and applewood smoked bacon.', random_price],

  ['Smokehouse Burger*',
  'New York cheddar, bacon, tangy barbecue sauce, and crisp onion rings.', random_price],

  ['Classic Cheeseburger*', 'With American cheese.', random_price],

  ['Bacon Cheeseburger*', 'With applewood smoked bacon and American cheese.', random_price],

  ['Turkey Burger', 'Premium ground turkey with savory seasonings.', random_price],

  ['Triple Prime Burger*', '100% USDA Prime beef.', random_price],

  ['Triple Prime Bacon Cheddar Burger*',
  'With aged New York cheddar and applewood smoked bacon.', random_price],

  ['Triple Prime Cheddar Burger*', 'Topped with aged New York cheddar.', random_price],

  ['Prime Burgers',
  "The best of the best, they're handcrafted from fresh, never frozen USDA Prime beef - only 2% of all beef is graded Prime.", random_price],

  ['Spicy Jalapeño Pretzel Cheeseburger*',
  'Topped with pepper jack cheese, crispy jalapeños, and chipotle mayonnaise.', random_price],

  ['Portabella Crispy Onion Pretzel Cheeseburger*',
  'A delicious duo of portabella mushrooms and Swiss. Served with chipotle mayonnaise and crisp onion straws.', random_price],

  ['Bacon Cheese Pretzel Burger*',
  'Topped with applewood smoked bacon, melted cheddar cheese, and bacon mustard mayonnaise.', random_price],

  ['Black & Blue Bacon Pretzel Burger*',
  'Blackened, grilled, and topped with blue cheese and applewood smoked bacon. Served with chipotle mayonnaise.', random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

]

dinner_menu = [
  ['Asiago Peppercorn Sirloin*',
  'Top sirloin perfectly seasoned and flavored with cracked peppercorns, Parmesan cream sauce, and shaved Asiago cheese.', random_price],

  ['Top Sirloin*', 'Seared to perfection.', random_price],

  ['Cajun Jambalaya Pasta',
  'Shrimp, chicken, and andouille sausage sautéed with onions and peppers in a spicy Cajun cream sauce.', random_price],

  ['Baked Ravioli',
  'Jumbo cheese-stuffed ravioli tossed in a light tomato cream sauce with baby spinach and the perfect crunchy, cheese crust.', random_price],

  ['Parmesan Shrimp Pasta',
  'Spicy sautéed shrimp over penne in Parmesan cream with tomatoes.', random_price],

  ['Parmesan Chicken Pasta',
  'Parmesan-crusted chicken breast over penne pasta tossed in Parmesan cream sauce, then finished with tomato-basil sauce and Swiss.', random_price],

  ['Low Country Shrimp & Grits',
  'Tender jumbo shrimp and andouille sausage, bacon, mushrooms, and peppers served over six cheese grits in a Parmesan cream sauce.', random_price],

  ['Chicken & Mushroom Alfredo',
  'Seasoned chicken tossed with linguini pasta, Cajun spices, sautéed baby portabella mushrooms, green peas, and rich Parmesan cream sauce.', random_price],

  ['Chicken & Broccoli Pasta',
  'Seasoned all-natural chicken and fresh broccoli over penne pasta in Parmesan cream.', random_price],

  ['Half-Rack Barbecue Baby-Back Ribs',
  'Slow-cooked for hours until they fall off the bone. Served with two sides.', random_price],

  ['Ribs & Crispy Popcorn Shrimp',
  'Our barbecue half-rack served with crispy popcorn shrimp. Served with two sides.', random_price],

  ['Hickory Bourbon-Glazed Pork Chop',
  'A tender pork chop finished on the grill, then glazed with a hickory bourbon barbecue sauce. Served with mashed potatoes and green beans.', random_price],

  ['Full-Rack Barbecue Baby-Back Ribs',
  'Roasted to fall-off-the-bone tenderness. Served with two sides.', random_price],

  ['Ribs & Southern Style Chicken Tenders',
  'Half-rack of our barbecue baby-back ribs, paired with our hand-breaded chicken tenders. Served with fries.', random_price],

  ['Pressed Cuban',
  'Slow-roasted pulled pork tossed in a tangy mustard barbecue sauce, pressed Cuban style on a hoagie roll with pickle chips and melted Swiss.', random_price],

  ['Avocado Grilled Chicken Sandwich',
  'All-natural grilled chicken with Swiss cheese, applewood smoked bacon, and sliced avocado.', random_price],

  ['Chicken BLT',
  'A Parmesan-crusted chicken breast, with Swiss cheese and applewood smoked bacon.', random_price],

  ['California Turkey BLT',
  'Not just your standard BLT! Juicy, fried turkey breast topped with avocado, smoky applewood bacon, lettuce, and tomato. Served on sourdough with zesty garlic mayo.', random_price],

  ['Buffalo Chicken Burger',
  'A southern style chicken breast tossed in spicy Buffalo sauce. Topped with melted Swiss cheese.', random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

  [, random_price],

]

appetizers = [
  ['Shrimp Fondue',
  'A blend of spicy shrimp, cheese, and fresh pico de gallo, with unlimited tortilla chips.', random_price],

  ['Thai Phoon Shrimp',
  'A half pound of tender, crispy shrimp tossed in a sweet and spicy chile sauce.', random_price],

  ['Big Dipper Sampler',
  'Southern style chicken tenders, cheese fries, Thai spring rolls, and fried mozzarella.', random_price],

  ['Four Way Sampler',
  'Southern style chicken tenders, fire wings, Thai spring rolls, and fried mozzarella.', random_price],

  ['Southern Style Chicken Tenders',
  'All white-meat chicken, dipped in our signature batter and fried golden brown. Choose classic, mild, or hot Buffalo sauce.', random_price],

  ['Santa Fe Chicken Quesadilla',
  'Seasoned chicken with grilled peppers and onions, feta, and Swiss cheese. Grilled then topped with our chile sauce.', random_price],

  ['Barbecue Chicken Flatbread',
  'Crispy flatbread crust with red onions, fresh cilantro, and smoky cheddar.', random_price],

  ['6-Cheese & Tomato Sauce Flatbread',
  'Crispy flatbread crust topped with tomato-basil sauce and a six cheese blend. Classico!', random_price],

  ['Strawberry Salad',
  'Orange Supremes, Strawberries, Goat Cheese, Candied Pecans Lemon Poppy Seed Vinaigrette', 5],

  ['Shrimp Bisque', 'Grilled Shrimp and Chive Oil', 5],

  ['Cheese Fries',
  'Layered with spicy queso, bacon bits, and shredded cheese. Served with ranch.', random_price],

  ['Tempura Green Beans',
  'Dipped in beer batter and flash fried golden brown. Served with sweet teriyaki sauce.', random_price],

  ['Cheese Fries',
  'Layered with spicy queso, bacon bits, and shredded cheese. Served with ranch.', random_price],

  ['Queso & Chips',
  'Smooth and spicy cheese dip. Served with unlimited tortilla chips.', random_price],

  ['Fried Mozzarella',
  'Crisp, golden brown, and served with a side of tomato-basil sauce.', random_price],

  ['Spinach Artichoke Dip',
  'Made with tender artichoke hearts and creamy Parmesan cheese. Served with unlimited crisp tortilla chips.', random_price],

  ['Fried Mozzarella',
  'Crisp, golden brown, and served with a side of tomato-basil sauce.', random_price],

  ['Fire Wings',
  'Some like it hot, some like it mild, and we have both! Crisp chicken wings tossed in mild or hot Buffalo sauce.', random_price],

  ["Fresh Grilled Zucchini", '', random_price],
  ['Roasted Spaghetti Squash', '', random_price],
  ['Onion Rings', '', random_price],
  ['French Fries', '', random_price],
  ['Fresh Baked Potato', '', random_price],
  ['Fresh Steamed Broccoli', '', random_price],
  ['Fresh Green Beans', '', random_price],
  ['Mashed Potatoes', '', random_price],
  ['Rice Pilaf', '', random_price],

]

dessert = [
  ['Chocolate Dipped Strawberries',
  'Two Fresh Strawberries Dipped in Rich White & Dark Chocolate', 5],
]

drinks = [
  ['Strawberry Martini',
  'Absolut Vanilla, Godiva Liquer, Monin Strawberry Syrup and Cream', 13]
]

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

place15 = provider3.places.create(title: "Foreign Cinema",
        street_address: "2534 Mission St",
        description: "Hip outdoor dining & movie screening",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place16 = provider3.places.create(title: "Mission Chinese Food",
        street_address: "2234 Mission St",
        description: "Hip Sichuan dining",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States")

place17 = provider3.places.create(title: "Ruth's Chris Steak House",
        street_address: "1601 Van Ness Ave",
        description: "Upscale American steakhouse chain",
        city: "San Francisco",
        state: "CA",
        zipcode: "94109",
        country: "United States",
        latitude: 37.790517,
        longitude: -122.42265)

place18 = provider3.places.create(title: "Venticello",
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

workshop_drinks.menu_items.create(title: "Latte",
  image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR21VIkWLju-dQ8BYA5Bk9K_5LeCnaOHK_n2FTDGfE1HAlyJ8ocyg",
  description: "tasty stuff", price: random_price)
workshop_drinks.menu_items.create(title: "Cappucchino",
  image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRKQsNNDY4tpKMM4iCmsLH5H1qVbWnAsywb0gwFqikY9md1KDCOahU03Q",
  description: "Like latte but with less milk",
  price: random_price)
workshop_drinks.menu_items.create(
  title: "Black Coffee",
  image_url: nil, description: "What you need to finish your final project",
  price: random_price)
workshop_drinks.menu_items.create(title: "Caramel Latte",
  image_url: nil, price: random_price)
workshop_drinks.menu_items.create(title: "Tea",
  image_url: nil, price: random_price)

workshop_lunch.menu_items.create(title: "Club Sandwich",
  image_url: nil, price: random_price)
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
tu_lan_br.menu_items.create(title: "Hashbrowns",
  image_url: nil, price: random_price)
tu_lan_br.menu_items.create(title: "Oats",
  image_url: nil, price: random_price)

tu_lan_lunch.menu_items.create(title: "Fried Calamari",
  image_url: nil, price: random_price)
tu_lan_lunch.menu_items.create(title: "Fried Mozzarella",
  image_url: nil, price: random_price)
tu_lan_lunch.menu_items.create(title: "Chicken Wings",
  image_url: nil, price: random_price)
tu_lan_lunch.menu_items.create(title: "Spinach Pie",
  description: "Most delicious meal you've ever had.",
  image_url: nil, price: random_price)

tu_lan_dinner.menu_items.create(title: "Crab Cakes",
  image_url: nil, price: random_price)
tu_lan_dinner.menu_items.create(title: "Potato Crusted Salmon",
  image_url: nil, price: random_price)

place4_menu =   place4.menus.create(title: "Menu")
place4_br =     place4_menu.categories.create(title: "Breakfast")
place4_lunch =  place4_menu.categories.create(title: "Lunch")
place4_dinner = place4_menu.categories.create(title: "Dinner")

place4_br.menu_items.create(title: "Hashbrowns", image_url: nil, price: random_price)
place4_br.menu_items.create(title: "Toast", image_url: nil, price: random_price)
place4_br.menu_items.create(title: "Grits", image_url: nil, price: random_price)
place4_br.menu_items.create(title: "Oats", image_url: nil, price: random_price)

5.times do
  item = appetizers.sample
  place4_br.menu_items.create(
    title: item[0],
    description: item[1],
    price: item[2])
end

place4_dinner.menu_items.create(title: "Crab Cakes",
  image_url: nil, price: random_price)
place4_dinner.menu_items.create(title: "Potato Crusted Salmon",
  image_url: nil, price: random_price)
