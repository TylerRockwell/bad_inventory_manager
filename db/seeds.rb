l = Category.create(name: 'Legendary')
e = Category.create(name: 'Epic')
r = Category.create(name: 'Rare')
s = Category.create(name: 'Standard')
Item.create(category: s, price: 110, quantity: 100, name: 'Salve', shelf_life_days: 1)
Item.create(category: s, price: 110, quantity: 50, name: 'Clarity', shelf_life_days: 1)
Item.create(category: s, price: 150, quantity: 100, name: 'Mango', shelf_life_days: 1)
Item.create(category: s, price: 125, quantity: 100, name: 'Tango', shelf_life_days: 4)
Item.create(category: s, price: 1200, quantity: 100, name: 'Broadsword', shelf_life_days: 10)
Item.create(category: r, price: 1950, quantity: 100, name: 'Glimmer Cape', shelf_life_days: 70)
Item.create(category: r, price: 1290, quantity: 100, name: 'Phase Boots', shelf_life_days: 100)
Item.create(category: r, price: 1290, quantity: 100, name: 'Power Treads', shelf_life_days: 100)
Item.create(category: r, price: 1290, quantity: 100, name: 'Boots of Travel', shelf_life_days: 100)
Item.create(category: r, price: 1290, quantity: 100, name: 'Arcane Boots', shelf_life_days: 100)
Item.create(category: r, price: 1290, quantity: 100, name: 'Tranquil Boots', shelf_life_days: 100)
Item.create(category: e, price: 2000, quantity: 100, name: 'Hyperstone', shelf_life_days: 30)
Item.create(category: e, price: 2000, quantity: 100, name: 'Demon Edge', shelf_life_days: 30)
Item.create(category: e, price: 2000, quantity: 100, name: 'Crystalys', shelf_life_days: 30)
Item.create(category: l, price: 5225, quantity: 100, name: 'Radiance', shelf_life_days: 35)
Item.create(category: l, price: 4900, quantity: 100, name: 'Bloodstone', shelf_life_days: 545)

Item.create(category: s, price: 4900, quantity: 100, name: 'Expired Item', shelf_life_days: -1)