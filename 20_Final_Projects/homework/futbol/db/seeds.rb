# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
def add_user
	@user = User.create(email: "foo@example.com", password: "gyenyame7", password_confirmation: "gyenyame7")
end

def create_user_pinboard
	@user = User.first
	@user.pinboards.create(name: "Epl", description: "Epl players")
end

add_user
create_user_pinboard

clubs = Club.create([{name: "Chelsea", manager: "Jose Mourino", stadium: "Stamfordbridge"}, 
					   {name: "Arsenal", manager: "Arsen Wenger", stadium: "The Emirates"}, 
					   {name: "Manchester United", manager: "David Moyes", stadium: "Old Trafford"}])


["Goalkeeper", "Defender", "Midfielder", "Forward"].each { |position| Position.create(player_position: "#{position}")}

forward_position = Position.find_by_player_position("Forward")
goalkeeper_position = Position.find_by_player_position("Goalkeeper")
midfield_position = Position.find_by_player_position("Midfielder")
defender_position = Position.find_by_player_position("Forward")

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