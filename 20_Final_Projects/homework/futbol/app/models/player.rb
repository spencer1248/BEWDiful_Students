class Player < ActiveRecord::Base
	belongs_to :position
	belongs_to :club
	validates :first_name, :last_name, :height, :weight, :date_of_birth, presence: true
	validates :place_of_birth, presence: true, allow_blank: true
	validates :jersey_number, numericality: { only_integer: true }
end
