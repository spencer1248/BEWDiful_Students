# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Url.create([
{link: 'http://www.generalassemb.ly', hash_code: 516396, created_at: "2013-07-19 21:23:30", updated_at: "2013-07-19 21:23:30"},
{link: 'http://www.google.com', hash_code: 234687, created_at: "2013-07-19 21:25:32", updated_at: "2013-07-19 21:25:32"},
{link: 'http://www.bustedtees.com', hash_code: "093674".to_i, created_at: "2013-07-19 21:23:30", updated_at: "2013-07-19 21:23:30"}
	])