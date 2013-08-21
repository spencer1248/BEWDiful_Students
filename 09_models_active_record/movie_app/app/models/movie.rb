class Movie < ActiveRecord::Base
	validates :title, :description, presence: true
	validates :description, length: { minimum: 10, message: "Your description is too short"}
	validates :year_released, numericality: { greater_than: 0 }
	validates :rating, inclusion: { in: 1..5}

	def self.find_query(user_query)
		where('title LIKE :user_query OR description LIKE :user_query OR year_released LIKE :user_query', :user_query => "%#{user_query}%") 
	end

end
