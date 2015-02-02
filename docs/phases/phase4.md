# Phase 4: Edit and Display Comments for MenuItems
## Rails
### Models
* Category
* MenuItem

### Controllers
* Api::CommentsController (create, destroy, show, update)

### Views
* menu_items/comments.json.jbuilder

## Backbone
### Models
* MenuItemComment

### Collections
* MenuItemsComments

### Views
* CommentShow
* MenuItemShow (composite view, contains CommentShow subviews)

## Gems/Libraries
