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
  name: 'Pita Pan',
  address: '140 Ventroux Rd',
  city: 'Saint Albans',
  state: 'WV',
  zip: '25560',
  category_id: Category.find_by(name:'Cafe').id
)

Restaurant.create(
  name: 'Lord of the Fries',
  address: '87011 W Bath Rd',
  city: 'Laingsburg',
  state: 'MI',
  zip: '48848',
  category_id: Category.find_by(name:'Fast Food').id
)

Restaurant.create(
  name: 'Brewed Awakening',
  address: '761 Quilliams Rd',
  city: 'Cleveland',
  state: 'OH',
  zip: '44121',
  category_id: Category.find_by(name:'Coffeehouse').id
)

Restaurant.create(
  name: 'Custards Last Stand',
  address: '3593 River Bend Rd',
  city: 'Demorest',
  state: 'GA',
  zip: '30535',
  category_id: Category.find_by(name:'Diner').id
)

Restaurant.create(
  name: 'Planet of the Grapes',
  address: '651 County Rd',
  city: 'Killen',
  state: 'AL',
  zip: '35645',
  category_id: Category.find_by(name:'Casual Dining').id
)

Restaurant.create(
  name: 'Lard Have Mercy',
  address: '2500 E Harmony Rd',
  city: 'Fort Collins',
  state: 'CO',
  zip: '80528',
  category_id: Category.find_by(name:'Fast Food').id
)

Restaurant.create(
  name: 'The Codfather',
  address: '215 Shelby St',
  city: 'Fort Oglethorpe',
  state: 'GA',
  zip: '30742',
  category_id: Category.find_by(name:'Casual Dining').id
)

Restaurant.create(
  name: 'Juan in a Million',
  address: '122 Hedgewood Dr',
  city: 'Spindale',
  state: 'NC',
  zip: '28160',
  category_id: Category.find_by(name:'Pub').id
)

Restaurant.create(
  name: 'Tequila Mockingbird',
  address: '52 Blue Ridge Dr E',
  city: 'Augusta',
  state: 'ME',
  zip: '04330',
  category_id: Category.find_by(name:'Pub').id
)

Restaurant.create(
  name: 'Thai Tanic',
  address: '4441 Worley Avenue',
  city: 'Lynchburg',
  state: 'Virginia',
  zip: '24504',
  category_id: Category.find_by(name:'Thai').id
)
