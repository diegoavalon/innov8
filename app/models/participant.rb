class Participant < ActiveRecord::Base
	# has_one :foot
	# has_one :body
	# has_one :hand

	validates :fname, :presence => true
	validates :lname, :presence => true



	before_save :uppercase_fields

	def uppercase_fields
	  self.fname.capitalize!
	  self.lname.capitalize!
	  self.address.capitalize!
	  self.city.capitalize!
	  self.state.upcase!
	  self.email.downcase!
	  self.sales_area.capitalize!
	  self.discipline.capitalize!
	  # self.participant_type.capitalize
	  # self.gender.upcase
	  # self.ethnicity.capitalize
	  # self.tops_size.capitalize
	  # self.alpha_bottoms.capitalize
	end
end