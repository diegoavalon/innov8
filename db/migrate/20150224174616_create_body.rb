class CreateBody < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
    	t.integer :participant_id
    	t.integer :chest
    	t.integer :waist
    	t.integer :low_hip
    	t.integer :high_hip
    	t.integer :inseam
    	t.integer :thigh
    	t.integer :upper_arm
    	t.integer :sleeve_length
    	t.integer :employee_id
    end
  end
end
