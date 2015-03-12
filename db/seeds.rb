# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# require Rails.root.join('spec/factories.rb') 


if Rails.env != 'production'

  # Delete Participants data
  Participant.delete_all
  # Participants

  100.times do
    Participant.create(
		:fname => Faker::Name.first_name,
		:lname => Faker::Name.last_name,
		:address => Faker::Address.street_address,
		:city => Faker::Address.city,
		:state => Faker::Address.state_abbr ,
		:zipcode	=> Faker::Address.zip,
		:email	=> Faker::Internet.email,
		:sales_area => Faker::Lorem.word,
		:discipline	=> Faker::Lorem.word,
		:participant_type => "Volunteer",
		:gender => "Female", 
		:age	=> Faker::PhoneNumber.subscriber_number(2),
		:chest => Faker::PhoneNumber.subscriber_number(2),
		:waist => Faker::PhoneNumber.subscriber_number(2),
		:low_hip => Faker::PhoneNumber.subscriber_number(2),
		:high_hip => Faker::PhoneNumber.subscriber_number(2),
		:inseam => Faker::PhoneNumber.subscriber_number(2),
		:thigh => Faker::PhoneNumber.subscriber_number(2),
		:upper_arm => Faker::PhoneNumber.subscriber_number(2),
		:sleeve_length => Faker::PhoneNumber.subscriber_number(2),
		:shoe_size => Faker::PhoneNumber.subscriber_number(1),
		:lh_palm_width_flat => Faker::PhoneNumber.subscriber_number(1),
		:lh_palm_width_round => Faker::PhoneNumber.subscriber_number(1),
		:lh_palm_length => Faker::PhoneNumber.subscriber_number(1),
		:rh_palm_width_flat => Faker::PhoneNumber.subscriber_number(1),
		:rh_palm_width_round => Faker::PhoneNumber.subscriber_number(1),
		:rh_palm_length => Faker::PhoneNumber.subscriber_number(1),
		:rh_middle_finger => Faker::PhoneNumber.subscriber_number(2),
		:lh_middle_finger => Faker::PhoneNumber.subscriber_number(2),
		:comments => Faker::Lorem.paragraph
		)
  end

  100.times do
    Participant.create(
		:fname => Faker::Name.first_name,
		:lname => Faker::Name.last_name,
		:address => Faker::Address.street_address,
		:city => Faker::Address.city,
		:state => Faker::Address.state_abbr ,
		:zipcode	=> Faker::Address.zip,
		:email	=> Faker::Internet.email,
		:sales_area => Faker::Lorem.word,
		:discipline	=> Faker::Lorem.word,
		:participant_type => "Volunteer",
		:gender => "Male", 
		:age	=> Faker::PhoneNumber.subscriber_number(2),
		:chest => Faker::PhoneNumber.subscriber_number(2),
		:waist => Faker::PhoneNumber.subscriber_number(2),
		:low_hip => Faker::PhoneNumber.subscriber_number(2),
		:high_hip => Faker::PhoneNumber.subscriber_number(2),
		:inseam => Faker::PhoneNumber.subscriber_number(2),
		:thigh => Faker::PhoneNumber.subscriber_number(2),
		:upper_arm => Faker::PhoneNumber.subscriber_number(2),
		:sleeve_length => Faker::PhoneNumber.subscriber_number(2),
		:shoe_size => Faker::PhoneNumber.subscriber_number(1),
		:lh_palm_width_flat => Faker::PhoneNumber.subscriber_number(1),
		:lh_palm_width_round => Faker::PhoneNumber.subscriber_number(1),
		:lh_palm_length => Faker::PhoneNumber.subscriber_number(1),
		:rh_palm_width_flat => Faker::PhoneNumber.subscriber_number(1),
		:rh_palm_width_round => Faker::PhoneNumber.subscriber_number(1),
		:rh_palm_length => Faker::PhoneNumber.subscriber_number(1),
		:rh_middle_finger => Faker::PhoneNumber.subscriber_number(2),
		:lh_middle_finger => Faker::PhoneNumber.subscriber_number(2),
		:comments => Faker::Lorem.paragraph
		)
  end

  # ...

end