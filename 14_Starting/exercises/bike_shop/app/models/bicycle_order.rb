class BicycleOrder < ActiveRecord::Base
	belongs_to :wheel_set
	validates :name, presence: true
end
