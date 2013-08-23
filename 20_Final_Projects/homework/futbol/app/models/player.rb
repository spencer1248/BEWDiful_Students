class Player < ActiveRecord::Base
	validates :first_name, :last_name, :position, :height, :weight, :date_of_birth, :place_of_birth, presence: true
end
