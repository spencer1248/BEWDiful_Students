class Url < ActiveRecord::Base
	validates_presence_of :link, :hash_code, presence: true
end
