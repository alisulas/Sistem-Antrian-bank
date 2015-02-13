def random_price
  rand(3.0..15.0).round(2)
end

breakfast_menu = [
  ['Awesome Omelettes',
  'Prepared with three large eggs, served with sides: Choice of hash browns, breakfast potatoes or fruit and choice of three buttermilk or two multigrain nut pancakes, fresh baked Mammoth Muffin®, or whole wheat, white or rye toast.', random_price],

  ['Griddle Greats',
    "One bite and you'll know why they're called Griddle Greats. Our famous Buttermilk Pancakes, Belgian Waffles and Brioche French Toast are made from scratch and served with Perkins® brand syrups. Sugar Free syrup also available on request.", random_price],

  ['Fresh-Cracked Classics',
    'Each comes with two large eggs, served with sides: Choice of hash browns, breakfast potatoes or fruit and choice of three buttermilk or two multigrain nut pancakes, fresh baked Mammoth Muffin® or whole wheat, white or rye toast (unless noted "No sides").', random_price],

  ["Old Timer's Breakfast",
    "Two Eggs* cooked to order with Grits, Sawmill Gravy and Homemade Buttermilk Biscuits along with real Butter and the best Preserves, Jam n' Apple butter available. Served with your choice of Fried Apples or Hashbrown Casserole and Smoked Sausage Patties, Thick-Sliced Bacon, Turkey Sausage Patties or Bacon.", random_price],

  ['Sunrise Sampler',
    "Two Eggs* cooked to order with Grits, Sawmill Gravy and Homemade Buttermilk Biscuits along with real Butter and the best Preserves, Jam n' Apple Butter available. Served with Fried Apples, Hashbrown Casserole and a sampling of Smoked Sausage, Country Ham and Thick-Sliced Bacon.", random_price],

  ['Country Morning Breakfast',
    "Two Eggs* cooked to order with Grits, Sawmill Gravy and Homemade Buttermilk Biscuits along with Real Butter and the best Preserves, Jam n' Apple Butter available upon request.", random_price],

  ['Double Meat Breakfast',
    "Three Eggs* cooked to order with a full order of Bacon and Smoked Sausage Patties. Served with Grits, Sawmill Gravy and Homemade Buttermilk Biscuits along with Real Butter and the best Preserves, Jam n' Apple Butter available upon request.", random_price],

  ["Yogurt Parfait n' Muffin",
    'A mix of Low-Fat Vanilla Yogurt, Seasonal Fruit topped with our Honey Oat Granola mix of Almonds and Dried Fruit and your choice of Apple Bran Muffin or Wild Maine Blueberry Muffin.', random_price],

  ['Wild Maine Blueberry Pancakes',
    'Three Buttermilk Pancakes loaded with Wild Maine Blueberries. Served up with our Wild Maine Blueberry Syrup.', random_price],

  ['Pecan Pancakes',
    'Three Buttermilk Pancakes loaded with pecans and served with real Butter and a warm bottle of 100% Pure Natural Syrup.', random_price],

  ['French Toast',
    'Four slices of our own Sourdough Bread (regular or whole-wheat) dipped in egg* then grilled to perfection. Served with any Fruit Topping or 100% Pure Natural Syrup.', random_price],

  ['Buttermilk Pancakes with Fruit Toppings',
    'Three buttermilk pancakes served with your choice of Golden Delicious Apples, Marion Blackberry, or Sweet Peach toppings. Topped with Real Whipped Cream.', random_price],

  ['Bacon Avocado',
    'Three eggs, hickory-smoked bacon, spinach, tomatoes, Monterey Jack cheese and avocado. With toast or muffin and herbed roasted potatoes.', random_price],

  ['Hashbrowns', '', 3],

  ['Egg White & Veggie',
    'Open-faced three egg white omelet with spinach, mushrooms, caramelized onions, tomatoes and goat cheese. With mixed fruit (instead of potatoes).', random_price],

  ['Eggs Benedict',
    'Poached eggs, hickory-smoked ham and Hollandaise on a grilled English muffin. With herbed roasted potatoes.', random_price],

  ['Fried Chicken & Waffles',
    'Hand-breaded chicken breast & buttermilk waffles.', random_price],
]

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
  'Choose three of our delicious sides to create! your own fresh meal.', random_price],

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

  ['Awesome Chicken Fresco',
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

  ['Herb-Crusted Tilapia', 'Crusted with panko bread crumbs and topped with lemon-butter sauce.', random_price],

  ['Grilled Salmon',
  'Flavorful, fresh salmon that is lightly seasoned and grilled to perfection.', random_price],

  ['New Orleans Seafood',
  'Mild and flaky tilapia, creole-seasoned then topped with sautéed shrimp and Parmesan cream.', random_price],

  ['Jumbo Skewered Shrimp',
  'Jumbo shrimp grilled and brushed with seasoned scampi butter.', random_price],

  ['Hickory Bourbon Salmon',
  'A fresh, grilled salmon filet glazed with bourbon barbecue sauce.', random_price],

  ['Crab Cake Dinner',
  'Crab cakes made from fresh, premium jumbo lump crab meat and seared to a golden brown.', random_price],

  ['Crispy Popcorn Shrimp',
  'A generous serving of shrimp fried to a golden brown and served with our sweet and spicy chile sauce.', random_price],

  ['Coastal Trio',
  'Tender lobster tail and jumbo skewered shrimp brushed with garlic scampi butter paired with light, flaky tilapia topped with your choice of creole seasoning or a lemon-Parmesan crust.', random_price],

  ['Blackened Tilapia',
  'Tender tilapia seasoned with creole spices and grilled to perfection.', random_price],

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

  ['House Cheese Fries',
  'Layered with spicy queso, bacon bits, and shredded cheese. Served with ranch.', random_price],

  ['Queso & Chips',
  'Smooth and spicy cheese dip. Served with unlimited tortilla chips.', random_price],

  ['Fried Mozzarella 2',
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

desserts = [
  ['Chocolate Dipped Strawberries',
  'Two Fresh Strawberries Dipped in Rich White & Dark Chocolate', 5],

  ['Tiramisu',
  'Lady finger cookies soaked in coffee liqueur and rum, layered between mascarpone and whipped cream with creamy icing.', random_price],

  ['Double Chocolate Cake',
  'With a molten heart of chocolate. Served with a scoop of creamy vanilla ice cream and accented with strawberry sauce.', random_price],

  ['Gourmet Cupcakes',
  'Moist, delicious and the perfect size to satisfy your craving for something sweet. Scrumptious Red Velvet and yummy Carrot Cake, both topped with a vanilla cream icing.', random_price],

  ['New York Cheesecake',
  'Thick, rich, and creamy. Topped with a generous blanket of berry sauce. ', random_price],

  ['Blondie',
  'A warm blonde brownie with chunks of chocolate and crunchy nuts. Served with vanilla ice cream.', random_price],

  ['White Chocolate Cherry Cheesecake',
  'Rich and creamy cheesecake with chocolate chunks layered with a white chocolate cherry mousse, all atop a chocolate crumb crust.', random_price],

  ['FRESH BERRIES & CHANTILLY CREAM',
  'seasonal berries served with a side of housemade whipped cream', random_price],

  ['CARROT CAKE',
  'three layer cake with cream cheese frosting topped with a drizzle of dark rum caramel', random_price],

  ['WALNUT TURTLE PIE',
  'housemade caramel, walnuts and chocolate baked in a chocolate pie crust', random_price],

  ['CRÈME BRÛLÉE',
  'creamy tahitian vanilla bean custard served with fresh seasonal berries', random_price],

]

drinks = [
  ['Strawberry Martini',
  'Absolut Vanilla, Godiva Liquer, Monin Strawberry Syrup and Cream', 13],

  ['Blanc de Blanc', 'Green apple, peach, lemon curd, and hazelnut surface on a vibrant nose', 6.75],

  ['Mascato', 'Highly aromatic with flavors of candied lemon, ripe melon, and honey notes', 6.75],

  ['OLD PROSECCO', 'Mionetto, Italy', 9],
  ['BOURGOGNE', 'Jean-Claude Boisset, France', 9],
  ['RIOJA', 'Bodegas Izadi, Spain', 9],
  ['BORDEAUX', 'Chateau Blaignan, Medoc', 9],
  ['WINTER CHAI MULE', 'Mionetto, Italy', 9],
  ['PROSECCO', 'Svedka Vanilla Vodka', 9],
  ['SPICED MANGO SMASH', 'Kraken Black Spiced Rum', 9],
  ['BOURBON PEACH MARTINI', 'Maker’s Mark Bourbon', 9],
  ['CHOCOLATE LAVA MILKSHAKE', 'Bulleit Rye Whiskey', 9],
  ['HOUSEMADE BURRATA', '', 8],
  ['LOBSTER LETTUCE WRAPS', '', 8],
  ['FILET MIGNON FLATBREAD', '', 8],
  ['AHI TUNA TACOS', '', 8],
  ['SHORT RIB EMPANADAS', '', 8],
  ['THE PRIME BURGER', '', 8],
  ['WARM CINNAMON-DUSTED DONUTS', '', 8],
  ['DECONSTRUCTED BALVENIE S’MORE', '', 8],
  ['FRENCH 75', 'Plymouth Gin, Mas fi Cava', 10],
  ['HALF MOON RUDY', 'Half Moon Orchard Gin, Jack Rudy Small Batch Tonic', 10],
  ['BLUEBERRY LEMON DROP', 'Pinnacle Blueberry Vodka', 7],
  ['FARMER’S DAUGHTER', 'Hangar One Vodka', 6],
  ['BLACKBERRY BRAMBLE', 'Bombay Sapphire Gin', 7],
  ['MAI TAI', 'Mount Gay Eclipse Rum, Kraken Black Spiced Rum', 6],
  ['WARD 8', 'Buffalo Trace Bourbon', 8],
  ['OMISSION PALE ALE', 'Portland, Oregon (Gluten Free)', 8],
  ['REDHOOK IPA', 'Seattle, Washington', 8],
]

user = User.create!(email: "user", password: "awesome")
provider = User.create!(email: "provider", password: "awesome", provider: true)
place = provider.places.create!(title: "Starbucks",
        description: "Iconic Seattle-base coffeehouse chain",
        street_address: "1231 Market Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94103",
        country: "United States",
        latitude: 37.7814707,
        longitude: -122.4079559)

provider2 = User.create!(email: "provider2", password: "awesome", provider: true)
place2 = provider2.places.create!(title: "Workshop Cafe",
        description: "Coffee shop catering to laptop workers",
        street_address: "180 Montgomery Street #100",
        city: "San Francisco",
        state: "CA",
        zipcode: "94104",
        country: "United States",
        latitude: 37.790815,
        longitude: -122.402144)

provider3 = User.create!(email: "provider3", password: "awesome", provider: true)
place3 = provider3.places.create!(title: "Tu Lan Vietnamese Restaurant",
        street_address: "8 6th Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94103",
        country: "United States",
        latitude: 37.7818066,
        longitude: -122.4104021)

provider4 = User.create!(email: "provider4", password: "awesome", provider: true)
place4 = provider4.places.create!(title: "Toast Eatery",
        street_address: "1601 Polk Street",
        description: "Homestyle breakfast & lunch spot",
        city: "San Francisco",
        state: "CA",
        zipcode: "94109",
        country: "United States",
        latitude: 37.7903671,
        longitude: -122.4201642)

provider5 = User.create!(email: "provider5", password: "awesome", provider: true)
place5 = provider5.places.create!(title: "Sweet Maple",
        street_address: "2101 Sutter Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94115",
        country: "United States",
        latitude: 37.785727,
        longitude: -122.4350462)

place6 = provider3.places.create!(title: "Cafe Flore",
        street_address: "2298 Market Street",
        city: "San Francisco",
        state: "CA",
        zipcode: "94114",
        country: "United States",
        latitude: 37.764656,
        longitude: -122.432943)

place7 = provider3.places.create!(title: "La Traviata",
        street_address: "2854 Mission St",
        description: "Mexican street eats",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.751276,
        longitude: -122.418633)

place8 = provider3.places.create!(title: "Beretta",
        street_address: "1199 Valencia St",
        description: "Lively spot with a modern Italian menu",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.75386,
        longitude: -122.420644)

place9 = provider3.places.create!(title: "Taquerias El Farolito",
        street_address: "2779 Mission St",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.75386,
        longitude: -122.420644)

place10 = provider3.places.create!(title: "Pollo Campero",
        street_address: "2740 Mission St",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.753127,
        longitude: -122.418789)

place11 = provider3.places.create!(title: "Ritual Coffee Roasters",
        description: "Fart-to-cup Cafe",
        street_address: "1026 Valencia St",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.753127,
        longitude: -122.418789)

place12 = provider3.places.create!(title: "Atlas Cafe",
        street_address: "3049 20th St",
        description: "Coffee shop with unique sandwiches",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.758981,
        longitude: -122.411465)

place13 = provider3.places.create!(title: "Dalfina Restaurant",
        street_address: "3621 18th St",
        description: "Bustling Italian restaurant",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.761428,
        longitude: -122.424276)

place14 = provider3.places.create!(title: "Rosamunde Sausage Grill",
        street_address: "2832 Mission St",
        description: "German sausage specialist",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.753127,
        longitude: -122.418789)

place15 = provider3.places.create!(title: "Foreign Cinema",
        street_address: "2534 Mission St",
        description: "Hip outdoor dining & movie screening",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.756456,
        longitude: -122.419187)

place16 = provider3.places.create!(title: "Mission Chinese Food",
        street_address: "2234 Mission St",
        description: "Hip Sichuan dining",
        city: "San Francisco",
        state: "CA",
        zipcode: "94110",
        country: "United States",
        latitude: 37.761215,
        longitude: -122.419652)

place17 = provider3.places.create!(title: "Ruth's Chris Steak House",
        street_address: "1601 Van Ness Ave",
        description: "Upscale American steakhouse chain",
        city: "San Francisco",
        state: "CA",
        zipcode: "94109",
        country: "United States",
        latitude: 37.790517,
        longitude: -122.42265)

place18 = provider3.places.create!(title: "Venticello",
        street_address: "1257 Taylor St",
        description: "Northen Italian cooking in a cozy space",
        city: "San Francisco",
        state: "CA",
        zipcode: "94108",
        country: "United States",
        latitude: 37.794216,
        longitude: -122.413246)

workshop_menu =   place2.menus.create!(title: "Workshop Cafe's Menu")
workshop_drinks = workshop_menu.categories.create!(title: "Drinks")
workshop_lunch =  workshop_menu.categories.create!(title: "Lunch")

workshop_drinks.menu_items.create!(title: "Latte",
  image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR21VIkWLju-dQ8BYA5Bk9K_5LeCnaOHK_n2FTDGfE1HAlyJ8ocyg",
  description: "tasty stuff", price: random_price)
workshop_drinks.menu_items.create!(title: "Cappucchino",
  image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRKQsNNDY4tpKMM4iCmsLH5H1qVbWnAsywb0gwFqikY9md1KDCOahU03Q",
  description: "Like latte but with less milk",
  price: random_price)
item = workshop_drinks.menu_items.create!(
  title: "Black Coffee",
  description: "What you need to finish your final project",
  price: random_price)
rand(10).times do
  item.comments.create(user_id: user.id, body: Faker::Lorem.paragraph)
end
workshop_drinks.menu_items.create!(title: "Caramel Latte",
  price: random_price)
workshop_drinks.menu_items.create!(title: "Tea",
  price: random_price)

workshop_lunch.menu_items.create!(title: "Club Sandwich",
  price: random_price)
workshop_lunch.menu_items.create!(
  title: "BLT Salad",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaSwefCN_R51TSjJc7UGcp0lrB0vQB9MGoKMFe3qZj9FtjXp8SWHIA5A",
  description: "Your usual BLT but with less bread. This is SF, we take healthy to another level.",
  price: random_price)

lunch_menu.sample(10).each do |i|
  workshop_lunch.menu_items.create!(title: i[0], description: i[1], price: i[2])
end


place3.menus.create!(title: "Menu")
tu_lan_br =       place3.menus[0].categories.create!(title: "Breakfast")
tu_lan_lunch =    place3.menus[0].categories.create!(title: "Lunch")
tu_lan_dinner =   place3.menus[0].categories.create!(title: "Dinner")
tu_lan_dessert =  place3.menus[0].categories.create!(title: "Desserts")

breakfast_menu.sample(5).each do |i|
  tu_lan_br.menu_items.create!(title: i[0], description: i[1], price: i[2])
end

lunch_menu.sample(9).each do |i|
  tu_lan_lunch.menu_items.create!(title: i[0], description: i[1], price: i[2])
end

dinner_menu.sample(12).each do |i|
  tu_lan_dinner.menu_items.create!(title: i[0], description: i[1], price: i[2])
end

desserts.sample(4).each do |i|
  tu_lan_dessert.menu_items.create!(title: i[0], description: i[1], price: i[2])
end


places = [place, place4, place5, place6, place7, place8,
          place9, place10, place11, place12, place13, place14,
          place15, place16, place17, place18]

places.each do |place|
  place.menus.create!(title: "Menu")
  menu_names = ["Breakfast", "Lunch", "Appetizers", "Dinner", "Desserts", "Drinks"]

  br, lch, app, dnr, dsrt, dr = menu_names.map do |name|
    place.menus[0].categories.create!(title: name)
  end

  breakfast_menu.sample(rand(3..8)).each do |i|
    item = br.menu_items.create!(title: i[0], description: i[1], price: i[2])
    rand(10).times do
      item.comments.create(user_id: user.id, body: Faker::Lorem.paragraph)
    end
  end

  lunch_menu.sample(rand(3..8)).each do |i|
    item = lch.menu_items.create!(title: i[0], description: i[1], price: i[2])
    rand(10).times do
      item.comments.create(user_id: user.id, body: Faker::Lorem.paragraph)
    end
  end

  appetizers.sample(rand(3..8)).each do |i|
    item = app.menu_items.create!(title: i[0], description: i[1], price: i[2])
    rand(10).times do
      item.comments.create(user_id: user.id, body: Faker::Lorem.paragraph)
    end
  end

  dinner_menu.sample(rand(3..8)).each do |i|
    item = dnr.menu_items.create!(title: i[0], description: i[1], price: i[2])
    rand(10).times do
      item.comments.create(user_id: user.id, body: Faker::Lorem.paragraph)
    end
  end

  desserts.sample(rand(3..8)).each do |i|
    item = dsrt.menu_items.create!(title: i[0], description: i[1], price: i[2])
    rand(10).times do
      item.comments.create(user_id: user.id, body: Faker::Lorem.paragraph)
    end
  end

  drinks.sample(rand(3..8)).each do |i|
    item = dr.menu_items.create!(title: i[0], description: i[1], price: i[2])
    rand(10).times do
      item.comments.create(user_id: user.id, body: Faker::Lorem.paragraph)
    end
  end
end

MenuItem.all.each do |menu_item|
  Rating.create(menu_item_id: menu_item.id, rater_id: user.id, score: rand(5))
end
