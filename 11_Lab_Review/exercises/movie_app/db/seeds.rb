# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
movies = Movie.create([
	{title: "Matrix", description: "Hacker wakes up to a new world", 
	year_released: 1999, rating: 4}, 
	{title: "Red", description: "Retired Extremely Dangerous", 
	year_released: 2010, rating: 5},
	{title: "Batman Begins", description: "The beginnings and makings of batman, from bruce wayne", 
	year_released: 2008, rating: 2},
	{title: "Men in Black", description: "Secret Agency overeeing aliens living on earth", 
	year_released: 1997, rating: 4.5},
	{title: "Lucky Number slevin", description: "Young boy grows up to avenge parents in twist", 
	year_released: 2003, rating: 1},
	{title: "Earth Girls Are Easy", description: "Alien friends arrive on earth, fall in love", 
	year_released: 1994, rating: 3}])