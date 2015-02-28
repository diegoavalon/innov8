class AddCommentsToParticipants < ActiveRecord::Migration
  def change
  	add_column :participants, :comments, :text
  end
end
