# WaiterUp

[waiterup.com](http://waiterup.com/)

## Minimum Viable Product

WaiterUp is partially a clone of Yelp built on Rails and Backbone. There are two types of users: providers and clients.

Clients can:

- [x] Create accounts (new client)
- [x] Create sessions (log in)
- [ ] Enter payment information
- [ ] Search places (restaurants, coffee shops, etc)
- [x] Create comments for category items
- [x] Rating category items

Providers can:

- [x] Create accounts (new provider)
- [x] Create sessions (log in)
- [ ] Enter payment information
- [x] Create places
- [x] Create menus
- [x] Create categories
- [x] Create category items


## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Places and Menus (~1 day)
Implement authentication as was taught at App Academy. Providers will be able to create a place and a menu. Clients will be able to view a list of all places without the need to log in. Add navbar and footer.

[Details][phase-one]

### Phase 2: JSON API and First Backbone Views (~2 days)
Add API routes to serve places and menus data as JSON, then add Backbone models and collections that fetch data from those routes.

[Details][phase-two]

### Phase 3: Display Menus with Categories and MenuItems (~2 days)
Add more API routes to serve categories and menu items data as JSON. Then add the corresponding Backbone models and collection to fetch the data from those routes.

Integrate `filepicker`, a third-party library, for file upload so providers can add images to menu items.

[Details][phase-three]

### Phase 4: Add Maps and Searching Places (~2 days)
Add Google Maps. Create separate `search` route that accepts a query in the params. There should be a search bar for all places, as well as a search bar for the menu items.

[Details][phase-five]

### Phase 5: Add upvotes/downvotes to MenuItems (~1 day)
Use `acts_as_votable`, a third-party library, to implement upvote/downvote feature for menu items.

[Details][phase-six]

### Phase 6: Edit and Display Comments for MenuItems (~1 days)
Add API route comments. Change MenuItemShow to composite view, then create views for comments and make them subviews of MenuItemShow.

[Details][phase-four]

### Bonus Features (TBD)
- [x] Customers can rate category items ONLY if they're logged in and have purchased that item before
- [ ] ask clients for their current location in the browser
- [ ] allow users to upload pictures of their food
- [ ] Place order for category item



[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
[phase-six]: ./docs/phases/phase6.md
