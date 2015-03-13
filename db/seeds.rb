# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

employees = Employee.create([
  {name: 'Anthony', email: 'anthony@example.com'},
  {name: 'Brittany', email: 'brittany@example.com'},
  {name: 'Carol', email: 'carol@example.com'}
])

animals = Animal.create([
  {name: 'Rocky', age: 14, breed: 'boxer dog', color: 'brown'},
  {name: 'Petunia', age: 5, breed: 'tuxedo cat', color: 'black/white'},
  {name: 'Iris', age: 7, breed: 'torti cat', color: 'black/brown'},
  {name: 'Daisy', age: 6, breed: 'tabby cat', color: 'gray'}
])
