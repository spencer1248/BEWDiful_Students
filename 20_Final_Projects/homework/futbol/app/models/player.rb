# == Schema Information
#
# Table name: players
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  jersey_number  :integer
#  height         :string(255)
#  weight         :string(255)
#  date_of_birth  :datetime
#  place_of_birth :string(255)
#  position_id    :integer
#  created_at     :datetime
#  updated_at     :datetime
#  club_id        :integer
#

class Player < ActiveRecord::Base
	belongs_to 				:position
	belongs_to 				:club
	has_many				:pinboard_players
	has_many				:pinboards, through: :pinboard_players

	validates :first_name, :last_name, :height, :weight, :date_of_birth, presence: true
	validates :place_of_birth, presence: true, allow_blank: true
	validates :jersey_number, numericality: { only_integer: true }
end
