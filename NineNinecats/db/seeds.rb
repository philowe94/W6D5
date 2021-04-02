# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

cat1 = Cat.create(birth_date: '2011/01/01', color: 'Brown',  name: 'toby', sex: 'F', description: 'Shes a fat cat')
cat2 = Cat.create(birth_date: '2016/01/01', color: 'Black',  name: 'blu')
cat3 = Cat.create(birth_date: '2016/01/01', color: 'Yellow', name: 'phil')
cat4 = Cat.create(birth_date: '2016/01/01', color: 'Purple', name: 'mac')

p "made 4 cats"