ActiveRecord::Schema.define(version: 20160327181640) do

  enable_extension 'plpgsql'

  create_table 'categories', force: :cascade do |t|
    t.string 'name', null: false
  end

  create_table 'restaurantcategories', force: :cascade do |t|
    t.integer 'restaurant_id', null: false
    t.integer 'category_id',   null: false
  end

  add_index 'restaurantcategories', ['restaurant_id', 'category_id'], name: 'index_restaurantcategories_on_restaurant_id_and_category_id', unique: true, using: :btree

  create_table 'restaurants', force: :cascade do |t|
    t.string  'name',        null: false
    t.string  'address',     null: false
    t.string  'city',        null: false
    t.string  'state',       null: false
    t.string  'zip',         null: false
    t.text    'description'
    t.integer 'category_id'
  end

  create_table 'reviews', force: :cascade do |t|
    t.integer  'restaurant_id', null: false
    t.integer  'rating',        null: false
    t.text     'body',          null: false
    t.datetime 'created_at',    null: false
    t.datetime 'updated_at',    null: false
  end

end
