class WheelSet < ActiveRecord::Base
	has_many :bicycle_orders
	validates :name, presence: true
end
