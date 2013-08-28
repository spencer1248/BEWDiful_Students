class Player < ActiveRecord::Base
	has_one :position
	validates :first_name, :last_name, :height, :weight, :date_of_birth, presence: true
	validates :place_of_birth, presence: true, allow_blank: true
	validates :jersey_number, numericality: { only_integer: true}
end
