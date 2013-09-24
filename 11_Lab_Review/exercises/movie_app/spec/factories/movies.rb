# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
  	title "The Matrix"
  	description "Hacker joins forces with terrorist to free man kind from slavery"
  	year_released 1999
  	rating 4
  end
end
