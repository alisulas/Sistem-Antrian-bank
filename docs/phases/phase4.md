# Phase 4: Edit and Display Comments for MenuItems
## Rails
### Models
* Category
* MenuItem

### Controllers
* Api::CommentsController (create, destroy, show, update)

### Views
* categories/new.html.erb
* menu_items/new.html.erb
* categories/show.json.jbuilder
* menu_items/show.json.jbuilder
* menu_items/comments.json.jbuilder

## Backbone
### Models
* MenuItemComment

### Collections
* MenuItemsComments

### Views
* CommentShow
* CategoryShow (composite view, contains CommentShow subviews)

## Gems/Libraries
