class RenameColumnsToParticipants < ActiveRecord::Migration
  def change
  	add_column :participants, :phone, :string
  	rename_column :participants, :sales_area, :area
  	add_column :participants, :stated_height_ft, :integer
  	add_column :participants, :stated_height_in, :integer
  	add_column :participants, :stated_pants_waist, :integer
  	add_column :participants, :stated_pants_length, :integer
  	add_column :participants, :stated_weight, :integer
  end
end
