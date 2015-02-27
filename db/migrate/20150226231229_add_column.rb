class AddColumn < ActiveRecord::Migration
  def change
  	add_column :participants, :chest, :integer
	  add_column :participants, :waist, :integer
		add_column :participants, :low_hip, :integer
		add_column :participants, :high_hip, :integer
		add_column :participants, :inseam, :integer
		add_column :participants, :thigh, :integer
		add_column :participants, :upper_arm, :integer
		add_column :participants, :sleeve_length, :integer
		add_column :participants, :shoe_size, :integer
		add_column :participants, :lf_width, :integer
		add_column :participants, :lf_heel_to_arch, :integer
		add_column :participants, :lf_heel_to_toe, :integer
		add_column :participants, :rf_width, :integer
		add_column :participants, :rf_heel_to_arch, :integer
		add_column :participants, :rf_heel_to_toe, :integer
		add_column :participants, :lh_palm_width_flat, :integer
		add_column :participants, :lh_palm_width_round, :integer
		add_column :participants, :lh_palm_length, :integer
		add_column :participants, :lh_middle_finger, :integer
		add_column :participants, :rh_palm_width_flat, :integer
		add_column :participants, :rh_palm_width_round, :integer
		add_column :participants, :rh_palm_length, :integer
		add_column :participants, :rh_middle_finger, :integer
  end
end
