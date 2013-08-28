class Movie < ActiveRecord::Base
	belongs_to :user
	has_many   :taggings
	has_many   :tags, through: :taggings
	accepts_nested_attributes_for :tags
	validates  :title, presence: true
	validates :description, length: { minimum: 10, message: "Your description is too short"}
	validates :year_released, numericality: { greater_than: 0 }
	validates :rating, inclusion: { in: 1..5}

	def self.find_query(user_query)
		where('title LIKE :user_query OR description LIKE :user_query OR year_released LIKE :user_query', :user_query => "%#{user_query}%") 
	end

end
