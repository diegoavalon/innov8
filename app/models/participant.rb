class Participant < ActiveRecord::Base
	# has_one :foot
	# has_one :body
	# has_one :hand

	validates :fname, :presence => true
end