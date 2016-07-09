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

ActiveRecord::Schema.define(version: 20160327181640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "restaurantcategories", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "category_id",   null: false
  end

  add_index "restaurantcategories", ["restaurant_id", "category_id"], name: "index_restaurantcategories_on_restaurant_id_and_category_id", unique: true, using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string  "name",        null: false
    t.string  "address",     null: false
    t.string  "city",        null: false
    t.string  "state",       null: false
    t.string  "zip",         null: false
    t.text    "description"
    t.integer "category_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "restaurant_id", null: false
    t.integer  "rating",        null: false
    t.text     "body",          null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end