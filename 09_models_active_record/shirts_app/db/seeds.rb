# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shirts = Shirt.create([
	{name: 'Yellow T-shirt', description: "Its a yellow shirt!"},
	{name: 'Brown T-shirt', description: "Its a brown shirt!"},
	{name: 'Orange T-shirt', description: "Its a orange shirt!"},
	{name: 'Red T-shirt', description: "Its a Red shirt!"},
	{name: 'Pink T-shirt', description: "Its a Pink shirt!"}
	])