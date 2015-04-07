class AddGloveSizeToParticipants < ActiveRecord::Migration
  def change
  	add_column :participants, :rh_glove_size, :string
  	add_column :participants, :lh_glove_size, :string 
  end
end
