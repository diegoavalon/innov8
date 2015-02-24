class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
    	t.string :fname
    	t.string :lname
    	t.string :address
    	t.string :city
    	t.string :state
    	t.integer :zipcode
    	t.string :email
    	t.string :sales_area
    	t.string :discipline
    	t.string :participant_type
    	t.integer :age
    	t.string :gender
    	t.string :ethnicity
    	t.integer :height_ft
    	t.integer :height_in
    	t.integer :weight
    	t.string :bra_size
    	t.integer :body_id
    	t.integer :hand_id
    	t.integer :foot_id
    	t.timestamps
    end
  end
end
