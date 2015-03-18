class AddColumnToParticipantsTable < ActiveRecord::Migration
  def change
  	add_column :participants, :stated_shoe_size, :float, precision: 3, scale: 1
  end
end
