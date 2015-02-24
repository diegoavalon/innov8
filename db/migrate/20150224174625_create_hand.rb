class CreateHand < ActiveRecord::Migration
  def change
    create_table :hands do |t|
    	t.integer :participant_id
    	t.integer :lh_palm_width_flat
    	t.integer :lh_palm_width_round
    	t.integer :lh_palm_length
    	t.integer :lh_middle_finger
    	t.integer :rh_palm_width_flat
    	t.integer :rh_palm_width_round
    	t.integer :rh_palm_length
    	t.integer :rh_middle_finger
    	t.integer :employee_id
    end
  end
end
