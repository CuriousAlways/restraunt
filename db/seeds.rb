# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
['indian', 'mughlai', 'vegetarian'].each do |name|
  s = Store.create(name: name)
  Menu.create(store: s)
end

5.times do |i|
  Food.create(name: "food#{i+1}", price: (10*rand+1)*50)
  Drink.create(name: "drink#{i+1}", price: (5*rand+1)*50)
end

Combo.create(name: 'combo1')
Combo.create(name: 'combo2')

Combo.first.item_ids = 1,2,4,8
Combo.first.item_ids = 3,7,10

Menu.find(1).dish_ids = 1,2,4,5,6,8,10
Menu.find(1).combo_ids = 1

Menu.find(2).dish_ids = 1,2,3,4,5,7,8,9,10
Menu.find(2).combo_ids = 1,2

Menu.find(3).dish_ids = 1,3,4,5,7,10
Menu.find(3).combo_ids = 2

