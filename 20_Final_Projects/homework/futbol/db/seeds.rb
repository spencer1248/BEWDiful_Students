# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
clubs = Club.create([{name: "Chelsea", manager: "Jose Mourino", stadium: "Stamfordbridge"}, 
					   {name: "Arsenal", manager: "Arsen Wenger", stadium: "The Emirates"}, 
					   {name: "Manchester United", manager: "David Moyes", stadium: "Old Trafford"}])


forward_position = Position.create(player_position: "Foward")
goalkeeper_position = Position.create(player_position: "Goalkeeper")
midfield_position = Position.create(player_position: "Midfielder")
defender_position = Position.create(player_position: "Defender")

chelsea = clubs.first
player = Player.create([{ first_name:  "Michael", 
						  last_name: "Essien", 
						  jersey_number: "5", 
						  height: "5'8", 
						  weight: "170lbs", 
						  date_of_birth: "March 10 1986", 
						  place_of_birth: "Ghana", 
						  position: midfield_position, 
						  club_id: chelsea}])

Player.create([{ first_name:  "Robin", 
						  last_name: "Van Persie", 
						  jersey_number: "10", 
						  height: "6'1", 
						  weight: "180lbs", 
						  date_of_birth: "March 3 1985", 
						  place_of_birth: "Netherlands", 
						  position: Position.last, 
						  club_id: Club.first.id}])