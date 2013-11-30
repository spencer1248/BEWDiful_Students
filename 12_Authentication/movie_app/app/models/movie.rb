class Movie < ActiveRecord::Base
	validates :title, :description, presence: true
	validates :description, length: {minimum: 10}
	validates :year_released, numericality: {greater_than: 0, only_integer: true}
	validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
	validates :user_id, numericality: {greater_than: 0, only_integer: true}
end 
