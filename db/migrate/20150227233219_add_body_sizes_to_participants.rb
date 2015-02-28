class AddBodySizesToParticipants < ActiveRecord::Migration
  def change
  	add_column :participants, :tops_size, :string
  	add_column :participants, :alpha_bottoms, :string
  	add_column :participants, :numeric_bottoms, :integer
  end
end
