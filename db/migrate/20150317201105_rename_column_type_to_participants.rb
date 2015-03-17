class RenameColumnTypeToParticipants < ActiveRecord::Migration
  def change
  	change_column :participants, :chest, :string
  	change_column :participants, :waist, :string
  	change_column :participants, :low_hip, :string
  	change_column :participants, :high_hip, :string
  	change_column :participants, :inseam, :string
  	change_column :participants, :thigh, :string
  	change_column :participants, :upper_arm, :string
  	change_column :participants, :sleeve_length, :string
  end
end
