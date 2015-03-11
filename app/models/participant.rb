class Participant < ActiveRecord::Base

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
	end

	def lh_glove_size

		left_size = self.lh_middle_finger
		
		case left_size
			when 7..7.4   then   left_size = "XXS"
			when 7.5..7.8  then  left_size = "XS"
			when 7.9..8.2 then   left_size = "S"
			when 8.3..8.6 then   left_size = "M"
			when 8.7..9.0 then   left_size = "L"
			when 9.1..9.2 then   left_size = "XL"
			when 9.5..9.8 then   left_size = "XXL"
			when 9.9..10.3 then  left_size = "XXXL"
		end

		left_size

	end


	def rh_glove_size

		right_size = self.rh_middle_finger
		
		case right_size
			when 7..7.4   then   right_size = "XXS"
			when 7.5..7.8  then  right_size = "XS"
			when 7.9..8.2 then   right_size = "S"
			when 8.3..8.6 then   right_size = "M"
			when 8.7..9.0 then   right_size = "L"
			when 9.1..9.2 then   right_size = "XL"
			when 9.5..9.8 then   right_size = "XXL"
			when 9.9..10.3 then  right_size = "XXXL"
		end

		right_size

	end
end