# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tagging, :class => 'Taggings' do
    movie_id 1
    tag_id 1
  end
end
