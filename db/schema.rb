# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150213174349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "title",      null: false
    t.integer  "menu_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: true do |t|
    t.integer  "menu_item_id", null: false
    t.integer  "user_id",      null: false
    t.text     "body",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "menu_items", force: true do |t|
    t.string   "title",       null: false
    t.integer  "category_id", null: false
    t.string   "image_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
    t.float    "price",       null: false
    t.float    "avg_rating"
  end

  add_index "menu_items", ["title", "category_id"], name: "index_menu_items_on_title_and_category_id", unique: true, using: :btree

  create_table "menus", force: true do |t|
    t.string   "title",      null: false
    t.integer  "place_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: true do |t|
    t.integer  "owner_id",       null: false
    t.string   "title",          null: false
    t.string   "street_address", null: false
    t.string   "city",           null: false
    t.string   "state",          null: false
    t.integer  "zipcode",        null: false
    t.string   "country",        null: false
    t.float    "longitude",      null: false
    t.float    "latitude",       null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "description"
  end

  add_index "places", ["title"], name: "index_places_on_title", using: :btree

  create_table "ratings", force: true do |t|
    t.integer  "menu_item_id", null: false
    t.integer  "rater_id",     null: false
    t.float    "score",        null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.string   "session_token",                   null: false
    t.boolean  "provider",        default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
