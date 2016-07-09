Category.create(name: 'Thai')
Category.create(name: 'Italian')
Category.create(name: 'Chinese')
Category.create(name: 'Fast Food')
Category.create(name: 'Casual Dining')
Category.create(name: 'Barbecue')
Category.create(name: 'Cafe')
Category.create(name: 'Coffeehouse')
Category.create(name: 'Pub')
Category.create(name: 'Diner')

Restaurant.create(
  name: "Chef Leu",
  address: "123 Fake St",
  city: "Shelburne",
  state: "VT",
  zip: "05482",
  category_id: Category.find_by(name:'Thai').id
)
