# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
product1 = Product.create(name: 'Camiseta', description: 'Camiseta 1')
product2 = Product.create(name: 'Camiseta', description: 'Camiseta 2')
color1 = Color.create(name: 'Vermelho', product: product1)
color2 = Color.create(name: 'Amarelo', product: product2)
color3 = Color.create(name: 'Azul', product: product2)
size1 = Size.create(name: 'S', quantity: 3, color: color1)
size2 = Size.create(name: 'M', quantity: 2, color: color3)
size2 = Size.create(name: 'M', quantity: 4, color: color2)
size3 = Size.create(name: 'G', quantity: 6, color: color3)
size3 = Size.create(name: 'G', quantity: 1, color: color2)
