# Schema Information

## users
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
email       | string    | not null
password_digest | string    | not null
session_token | string    | not null
provider | boolean    | default false

## places
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
owner_id    | integer   | not null, foreign key (references users)
name       | string    | not null
address       | string    | not null
longitude       | string    | not null
latitude       | string    | not null

## menus
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
place_id    | integer   | not null, foreign key (references places)
title       | string    | not null

## categories
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
menu_id    | integer   | not null, foreign key (references menus)
title       | string    | not null

## menu_items
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
category_id    | integer   | not null, foreign key (references categories)
title       | string    | not null
