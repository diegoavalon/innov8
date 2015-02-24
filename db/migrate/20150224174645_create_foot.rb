class CreateFoot < ActiveRecord::Migration
  def change
    create_table :foots do |t|
    	t.integer :participant_id
    	t.integer :shoe_size
    	t.integer :lf_width
    	t.integer :lf_heel_to_arch
    	t.integer :lf_heel_to_toe
    	t.integer :rf_width
    	t.integer :rf_heel_to_arch
    	t.integer :rf_heel_to_toe
    	t.integer :employee_id
    end
  end
end
