class RenameColumnToParticipantsTable < ActiveRecord::Migration
  def change
  	rename_column :participants, :stated_pants_length, :stated_pants_inseam
  	rename_column :participants, :waist, :natural_waist
  	add_column :participants, :pant_waist, :string
  end
end
