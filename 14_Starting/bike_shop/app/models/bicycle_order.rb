class BicycleOrder < ActiveRecord::Base
	validates :name, :presence => true
end