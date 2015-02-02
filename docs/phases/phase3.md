# Phase 3: Display Menus with Categories and MenuItems

## Rails
### Models
* Category
* MenuItem

### Controllers
* CategoriesController (create, new, destroy)
* Api::CategoriesController (create, index, show, destroy)
* MenuItemsController (create, new, destroy)
* Api::MenuItemsController (create, destroy, show, update)

### Views
* categories/new.html.erb
* menu_items/new.html.erb
* categories/show.json.jbuilder
* menu_items/show.json.jbuilder

## Backbone
### Models
* Category
* MenuItem

### Collections
* Categories
* MenuItems
* MenuItemForm

### Views
* CategoryShow
* MenuItemShow

## Gems/Libraries
* Filepicker
