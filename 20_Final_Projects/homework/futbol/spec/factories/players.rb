# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
  	first_name 		"Abedi Pele"
  	last_name		"Ayew"
  	position		"Attacking midfielder"
  	height			"5'9"
  	weight			"180 lbs"
  	date_of_birth	"November 5 1964"
  	place_of_birth	"Ghana, Kibi(eastern region)"
  end
end
