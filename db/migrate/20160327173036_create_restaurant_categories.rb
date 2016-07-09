class CreateRestaurantCategories < ActiveRecord::Migration
  def change
      create_table :restaurantcategories do |t|
      t.integer :restaurant_id, null: false
      t.integer :category_id,   null: false
      t.index [:restaurant_id, :category_id], unique: true
    end
  end
end
