class RenameColumnInParticipants < ActiveRecord::Migration
  def change
  	change_column :participants, :lf_width, :string
  	change_column :participants, :lf_heel_to_arch, :float
  	change_column :participants, :lf_heel_to_toe, :float
  	change_column :participants, :rf_width, :string
  	change_column :participants, :rf_heel_to_arch, :float
  	change_column :participants, :rf_heel_to_toe, :float
  	change_column :participants, :lh_palm_width_flat, :float
  	change_column :participants, :lh_palm_width_round, :float
  	change_column :participants, :lh_palm_length, :float
  	change_column :participants, :rh_palm_width_flat, :float
  	change_column :participants, :rh_palm_width_round, :float
  	change_column :participants, :rh_palm_length, :float
  	change_column :participants, :lh_middle_finger, :decimal
  	change_column :participants, :rh_middle_finger, :decimal
  end
end
