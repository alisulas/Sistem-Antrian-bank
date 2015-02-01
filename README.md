# WaiterUp

[waiterup.com](http://waiterup.com/)

## Minimum Viable Product

WaiterUp is partially a clone of Yelp built on Rails and Backbone. There are two types of users: providers and clients.

Clients can:

- [ ] Create accounts (new client)
- [ ] Create sessions (log in)
- [ ] Enter payment information
- [ ] Search places (restaurants, coffee shops, etc)
- [ ] Create comments for category items
- [ ] Upvote/downvote category items
- [ ] Place order for category item

Providers can:

- [ ] Create accounts (new provider)
- [ ] Create sessions (log in)
- [ ] Enter payment information
- [ ] Create places
- [ ] Create menus
- [ ] Create categories
- [ ] Create category items


## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Places and Menus (~1 day)
[Details][phase-one]

### Phase 2: JSON API and First Backbone Views (~2 days)

[Details][phase-two]

### Phase 3: Display Menus with Categories and MenuItems (~2 days)

[Details][phase-three]

### Phase 4: Edit and Display Comments for MenuItems (~1 days)

[Details][phase-four]

### Phase 5: Searching Places (~2 days)

[Details][phase-five]

### Phase 6: Add upvotes/downvotes to MenuItems (~1 day)

[Details][phase-six]

### Bonus Features (TBD)
- [ ] Clients can upvote/downvote category items ONLY if they're logged in and have purchased that item before
- [ ] add maps
- [ ] ask clients for their current location in the browser



[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
[phase-six]: ./docs/phases/phase6.md
